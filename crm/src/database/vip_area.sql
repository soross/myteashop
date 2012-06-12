
drop table vip_area cascade constraints;

/*==============================================================*/
/* Table: vip_area                                              */
/*==============================================================*/
create table vip_area  (
   n_id                 NUMBER                          not null,
   v_code               CHAR(2),
   v_name               VARCHAR2(30),
   v_city               CHAR(5),
   constraint PK_VIP_AREA primary key (n_id)
);

comment on table vip_area is '地区表';
comment on column vip_area.n_id is '编号';
comment on column vip_area.v_code is '代码';
comment on column vip_area.v_name is '名称';
comment on column vip_area.v_city is '县市编号';

-- 创建序列
drop sequence seq_area;
create sequence seq_area;

-- 添加初始数据
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '东城区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '西城区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '崇文区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '宣武区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '朝阳区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '丰台区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '石景山区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '海淀区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '门头沟区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '房山区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '通州区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '顺义区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '昌平区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '大兴区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '怀柔区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', '平谷区', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '密云县', '11002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '延庆县', '11002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '和平区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '河东区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '河西区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '南开区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '河北区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '红桥区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '塘沽区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '汉沽区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '大港区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '东丽区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '西青区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '津南区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '北辰区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '武清区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '宝坻区', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '宁河县', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '静海县', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '蓟　县', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '长安区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '桥东区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '桥西区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '新华区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '井陉矿区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '裕华区', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '井陉县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '正定县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '栾城县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '行唐县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '灵寿县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '高邑县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '深泽县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '赞皇县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '无极县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '平山县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '元氏县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '赵　县', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '辛集市', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '藁城市', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '晋州市', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '新乐市', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '鹿泉市', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '路南区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '路北区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '古冶区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '开平区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '丰南区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '丰润区', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '滦　县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '滦南县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '乐亭县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '迁西县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '玉田县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '唐海县', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '遵化市', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '迁安市', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海港区', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '山海关区', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '北戴河区', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '青龙满族自治县', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '昌黎县', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '抚宁县', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '卢龙县', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '邯山区', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '丛台区', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '复兴区', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '峰峰矿区', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '邯郸县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '临漳县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '成安县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '大名县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '涉　县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '磁　县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '肥乡县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '永年县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '邱　县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '鸡泽县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '广平县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '馆陶县', '13004');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '魏　县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '曲周县', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '武安市', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '桥东区', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '桥西区', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '邢台县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '临城县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '内丘县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '柏乡县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '隆尧县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '任　县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '南和县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '宁晋县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '巨鹿县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '新河县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '广宗县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '平乡县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '威　县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '清河县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '临西县', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '南宫市', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '沙河市', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新市区', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '北市区', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '南市区', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '满城县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '清苑县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '涞水县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '阜平县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '徐水县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '定兴县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '唐　县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '高阳县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '容城县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '涞源县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '望都县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '安新县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '易　县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '曲阳县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '蠡　县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '顺平县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '博野县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '雄　县', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '涿州市', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '定州市', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '安国市', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '高碑店市', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '桥东区', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '桥西区', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '宣化区', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '下花园区', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '宣化县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '张北县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '康保县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '沽源县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '尚义县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '蔚　县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '阳原县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '怀安县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '万全县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '怀来县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '涿鹿县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '赤城县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '崇礼县', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '双桥区', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '双滦区', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '鹰手营子矿区', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '承德县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '兴隆县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '平泉县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '滦平县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '隆化县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '丰宁满族自治县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '宽城满族自治县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '围场满族蒙古族自治县', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新华区', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '运河区', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '沧　县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '青　县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '东光县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '海兴县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '盐山县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '肃宁县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '南皮县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '吴桥县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '献　县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '孟村回族自治县', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '泊头市', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '任丘市', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '黄骅市', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '河间市', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '安次区', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '广阳区', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '固安县', '13010');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '永清县', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '香河县', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '大城县', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '文安县', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '大厂回族自治县', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '霸州市', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '三河市', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '桃城区', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '枣强县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '武邑县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '武强县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '饶阳县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '安平县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '故城县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '景　县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '阜城县', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '冀州市', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '深州市', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '小店区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '迎泽区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '杏花岭区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '尖草坪区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '万柏林区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '晋源区', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '清徐县', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阳曲县', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '娄烦县', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '古交市', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城　区', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '矿　区', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '南郊区', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '新荣区', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阳高县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '天镇县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '广灵县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '灵丘县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '浑源县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '左云县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '大同县', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城　区', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '矿　区', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '平定县', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '盂　县', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城　区', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '长治县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '襄垣县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '屯留县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '平顺县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '黎城县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '壶关县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '长子县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '武乡县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '沁　县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '沁源县', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '潞城市', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城　区', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '沁水县', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阳城县', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '陵川县', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '泽州县', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '高平市', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '朔城区', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '平鲁区', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '山阴县', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '应　县', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '右玉县', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '怀仁县', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '榆次区', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '榆社县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '左权县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '和顺县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '昔阳县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '寿阳县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '太谷县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '祁　县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '平遥县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '灵石县', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '介休市', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '盐湖区', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '临猗县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '万荣县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '闻喜县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '稷山县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '新绛县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '绛　县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '垣曲县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '夏　县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '平陆县', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '芮城县', '14008');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '永济市', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '河津市', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '忻府区', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '定襄县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '五台县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '代　县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '繁峙县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '宁武县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '静乐县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '神池县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '五寨县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '岢岚县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '河曲县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '保德县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '偏关县', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '原平市', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '尧都区', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '曲沃县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '翼城县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '襄汾县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '洪洞县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '古　县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '安泽县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '浮山县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '吉　县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '乡宁县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '大宁县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '隰　县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '永和县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '蒲　县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '汾西县', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '侯马市', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '霍州市', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '离石区', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '文水县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '交城县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '兴　县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '临　县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '柳林县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '石楼县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '岚　县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '方山县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '中阳县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '交口县', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '孝义市', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '汾阳市', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新城区', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '回民区', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '玉泉区', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '赛罕区', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '土默特左旗', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '托克托县', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '和林格尔县', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '清水河县', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '武川县', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东河区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '昆都仑区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '青山区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '石拐区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '白云矿区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '九原区', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '土默特右旗', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '固阳县', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '达尔罕茂明安联合旗', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海勃湾区', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '海南区', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '乌达区', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '红山区', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '元宝山区', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '松山区', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阿鲁科尔沁旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '巴林左旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '巴林右旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '林西县', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '克什克腾旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '翁牛特旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '喀喇沁旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '宁城县', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '敖汉旗', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '科尔沁区', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '科尔沁左翼中旗', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '科尔沁左翼后旗', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '开鲁县', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '库伦旗', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '奈曼旗', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '扎鲁特旗', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '霍林郭勒市', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东胜区', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '达拉特旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '准格尔旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '鄂托克前旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '鄂托克旗', '15006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '杭锦旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '乌审旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '伊金霍洛旗', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海拉尔区', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阿荣旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '莫力达瓦达斡尔族自治旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '鄂伦春自治旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '鄂温克族自治旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '陈巴尔虎旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '新巴尔虎左旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '新巴尔虎右旗', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '满洲里市', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '牙克石市', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '扎兰屯市', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '额尔古纳市', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '根河市', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '临河区', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '五原县', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '磴口县', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '乌拉特前旗', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '乌拉特中旗', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '乌拉特后旗', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '杭锦后旗', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '集宁区', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '卓资县', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '化德县', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '商都县', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '兴和县', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '凉城县', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '察哈尔右翼前旗', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '察哈尔右翼中旗', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '察哈尔右翼后旗', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '四子王旗', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '丰镇市', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '乌兰浩特市', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '阿尔山市', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '科尔沁右翼前旗', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '科尔沁右翼中旗', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '扎赉特旗', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '突泉县', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '二连浩特市', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '锡林浩特市', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阿巴嘎旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '苏尼特左旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '苏尼特右旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '东乌珠穆沁旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '西乌珠穆沁旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '太仆寺旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '镶黄旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '正镶白旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '正蓝旗', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '多伦县', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阿拉善左旗', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阿拉善右旗', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '额济纳旗', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '和平区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '沈河区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '大东区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '皇姑区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '铁西区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '苏家屯区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '东陵区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '新城子区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '于洪区', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '辽中县', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '康平县', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '法库县', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '新民市', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '中山区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西岗区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '沙河口区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '甘井子区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '旅顺口区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '金州区', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '长海县', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '瓦房店市', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '普兰店市', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '庄河市', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '铁东区', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '铁西区', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '立山区', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '千山区', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '台安县', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '岫岩满族自治县', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '海城市', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新抚区', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '东洲区', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '望花区', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '顺城区', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '抚顺县', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '新宾满族自治县', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '清原满族自治县', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '平山区', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '溪湖区', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '明山区', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '南芬区', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '本溪满族自治县', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桓仁满族自治县', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '元宝区', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '振兴区', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '振安区', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宽甸满族自治县', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '东港市', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '凤城市', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '古塔区', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '凌河区', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '太和区', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '黑山县', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '义　县', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '凌海市', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '北宁市', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '站前区', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西市区', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '鲅鱼圈区', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '老边区', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '盖州市', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '大石桥市', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海州区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '新邱区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '太平区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '清河门区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '细河区', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阜新蒙古族自治县', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '彰武县', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '白塔区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '文圣区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '宏伟区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '弓长岭区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '太子河区', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '辽阳县', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '灯塔市', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '双台子区', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '兴隆台区', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '大洼县', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '盘山县', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '银州区', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '清河区', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '铁岭县', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '西丰县', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '昌图县', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '调兵山市', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '开原市', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '双塔区', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙城区', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '朝阳县', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '建平县', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '喀喇沁左翼蒙古族自治县', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '北票市', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '凌源市', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '连山区', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙港区', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '南票区', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '绥中县', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '建昌县', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '兴城市', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '南关区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '宽城区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '朝阳区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '二道区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '绿园区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '双阳区', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '农安县', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '九台市', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '榆树市', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '德惠市', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '昌邑区', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙潭区', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '船营区', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '丰满区', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '永吉县', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '蛟河市', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '桦甸市', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '舒兰市', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '磐石市', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '铁西区', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '铁东区', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '梨树县', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '伊通满族自治县', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '公主岭市', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '双辽市', '22003');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '龙山区', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西安区', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '东丰县', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '东辽县', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东昌区', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '二道江区', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '通化县', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '辉南县', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '柳河县', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '梅河口市', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '集安市', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '八道江区', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '抚松县', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '靖宇县', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '长白朝鲜族自治县', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '江源县', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '临江市', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '宁江区', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '前郭尔罗斯蒙古族自治县', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '长岭县', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '乾安县', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '扶余县', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '洮北区', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '镇赉县', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '通榆县', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '洮南市', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '大安市', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '延吉市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '图们市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '敦化市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '珲春市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '龙井市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '和龙市', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '汪清县', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '安图县', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '道里区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '南岗区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '道外区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '香坊区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '动力区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '平房区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '松北区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '呼兰区', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '依兰县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '方正县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '宾　县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '巴彦县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '木兰县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '通河县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '延寿县', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '阿城市', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '双城市', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '尚志市', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '五常市', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '龙沙区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '建华区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '铁锋区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '昂昂溪区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '富拉尔基区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '碾子山区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '梅里斯达斡尔族区', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '龙江县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '依安县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '泰来县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '甘南县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '富裕县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '克山县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '克东县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '拜泉县', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '讷河市', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鸡冠区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '恒山区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '滴道区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '梨树区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '城子河区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '麻山区', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '鸡东县', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '虎林市', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '密山市', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '向阳区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '工农区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '南山区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '兴安区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '东山区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '兴山区', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '萝北县', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '绥滨县', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '尖山区', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '岭东区', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '四方台区', '23005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '宝山区', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '集贤县', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '友谊县', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '宝清县', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '饶河县', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '萨尔图区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙凤区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '让胡路区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '红岗区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '大同区', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '肇州县', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '肇源县', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '林甸县', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '杜尔伯特蒙古族自治县', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '伊春区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '南岔区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '友好区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '西林区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '翠峦区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '新青区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '美溪区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '金山屯区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '五营区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '乌马河区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '汤旺河区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '带岭区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '乌伊岭区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '红星区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '上甘岭区', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '嘉荫县', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '铁力市', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '永红区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '向阳区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '前进区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '东风区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桦南县', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '桦川县', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '汤原县', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '抚远县', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '同江市', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '富锦市', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新兴区', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '桃山区', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '茄子河区', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '勃利县', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东安区', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '阳明区', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '爱民区', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '西安区', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '东宁县', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '林口县', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '绥芬河市', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '海林市', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '宁安市', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '穆棱市', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '爱辉区', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '嫩江县', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '逊克县', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '孙吴县', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '北安市', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '五大连池市', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '北林区', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '望奎县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '兰西县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '青冈县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '庆安县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '明水县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '绥棱县', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '安达市', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '肇东市', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '海伦市', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '呼玛县', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '塔河县', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '漠河县', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '黄浦区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '卢湾区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '徐汇区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '长宁区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '静安区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '普陀区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '闸北区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '虹口区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '杨浦区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '闵行区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '宝山区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '嘉定区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '浦东新区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '金山区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', '松江区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '18', '青浦区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '19', '南汇区', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '20', '奉贤区', '31001');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '崇明县', '31002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '玄武区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '白下区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '秦淮区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '建邺区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '鼓楼区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '下关区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '浦口区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '栖霞区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '雨花台区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '江宁区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '六合区', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '溧水县', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '高淳县', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '崇安区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '南长区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '北塘区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '锡山区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '惠山区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '滨湖区', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '江阴市', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '宜兴市', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鼓楼区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '云龙区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '九里区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '贾汪区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '泉山区', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '丰　县', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '沛　县', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '铜山县', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '睢宁县', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '新沂市', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '邳州市', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '天宁区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '钟楼区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '戚墅堰区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '新北区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '武进区', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '溧阳市', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '金坛市', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '沧浪区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '平江区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '金阊区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '虎丘区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '吴中区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '相城区', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '常熟市', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '张家港市', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '昆山市', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '吴江市', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '太仓市', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '崇川区', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '港闸区', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '海安县', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '如东县', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '启东市', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '如皋市', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '通州市', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '海门市', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '连云区', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '新浦区', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '海州区', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '赣榆县', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '东海县', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '灌云县', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '灌南县', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '清河区', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '楚州区', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '淮阴区', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '清浦区', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '涟水县', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '洪泽县', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '盱眙县', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '金湖县', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '亭湖区', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '盐都区', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '响水县', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '滨海县', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '阜宁县', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '射阳县', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '建湖县', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '东台市', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '大丰市', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '广陵区', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '邗江区', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '宝应县', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '仪征市', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '高邮市', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '88', '江都市', '32010');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '京口区', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '润州区', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '丹徒区', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '丹阳市', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '扬中市', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '句容市', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海陵区', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '高港区', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '兴化市', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '靖江市', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '泰兴市', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '姜堰市', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '宿城区', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '宿豫区', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '沭阳县', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '泗阳县', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '泗洪县', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '上城区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '下城区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '江干区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '拱墅区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '西湖区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '滨江区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '萧山区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '余杭区', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桐庐县', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '淳安县', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '建德市', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '富阳市', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '临安市', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '海曙区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '江东区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '江北区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '北仑区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '镇海区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '鄞州区', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '象山县', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宁海县', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '余姚市', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '慈溪市', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '奉化市', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鹿城区', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙湾区', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '瓯海区', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '洞头县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '永嘉县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平阳县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '苍南县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '文成县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '泰顺县', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '瑞安市', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '乐清市', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '秀城区', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '秀洲区', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '嘉善县', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '海盐县', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '海宁市', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '平湖市', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '桐乡市', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '吴兴区', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '南浔区', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '德清县', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '长兴县', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '安吉县', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '越城区', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '绍兴县', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '新昌县', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '诸暨市', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '上虞市', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '嵊州市', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '婺城区', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '金东区', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '武义县', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '浦江县', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '磐安县', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '兰溪市', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '义乌市', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '东阳市', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '永康市', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '柯城区', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '衢江区', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '常山县', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '开化县', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '龙游县', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '江山市', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '定海区', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '普陀区', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '岱山县', '33009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '嵊泗县', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '椒江区', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '黄岩区', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '路桥区', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '玉环县', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '三门县', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '天台县', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '仙居县', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '温岭市', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '临海市', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '莲都区', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '青田县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '缙云县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '遂昌县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '松阳县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '云和县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '庆元县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '景宁畲族自治县', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '龙泉市', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '瑶海区', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '庐阳区', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '蜀山区', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '包河区', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '长丰县', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '肥东县', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '肥西县', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '镜湖区', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '马塘区', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '新芜区', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '鸠江区', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '芜湖县', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '繁昌县', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '南陵县', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '龙子湖区', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '蚌山区', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '禹会区', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '淮上区', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '怀远县', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '五河县', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '固镇县', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '大通区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '田家庵区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '谢家集区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '八公山区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '潘集区', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '凤台县', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '金家庄区', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '花山区', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '雨山区', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '当涂县', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '杜集区', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '相山区', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '烈山区', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '濉溪县', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '铜官山区', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '狮子山区', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '铜陵县', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '迎江区', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '大观区', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '怀宁县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '枞阳县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '潜山县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '太湖县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宿松县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '望江县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '岳西县', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '桐城市', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '屯溪区', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '黄山区', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '徽州区', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '歙　县', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '休宁县', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '黟　县', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '祁门县', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '琅琊区', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '南谯区', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '来安县', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '全椒县', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '定远县', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '凤阳县', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '天长市', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '明光市', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '颍州区', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '颍东区', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '颍泉区', '34012');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '临泉县', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '太和县', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '阜南县', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '颍上县', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '界首市', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '墉桥区', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '砀山县', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '萧　县', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '灵璧县', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '泗　县', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '居巢区', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '庐江县', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '无为县', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '含山县', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '和　县', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '金安区', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '裕安区', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '寿　县', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '霍邱县', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '舒城县', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '金寨县', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '霍山县', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '谯城区', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '涡阳县', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '蒙城县', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '利辛县', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '贵池区', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '东至县', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '石台县', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '青阳县', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '宣州区', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '郎溪县', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '广德县', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '泾　县', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '绩溪县', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '旌德县', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '宁国市', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鼓楼区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '台江区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '仓山区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '马尾区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '晋安区', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '闽侯县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '连江县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '罗源县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '闽清县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '永泰县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '平潭县', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '福清市', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '长乐市', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '思明区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '海沧区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '湖里区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '集美区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '同安区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '翔安区', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城厢区', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '涵江区', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '荔城区', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '秀屿区', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '仙游县', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '梅列区', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '三元区', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '明溪县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '清流县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宁化县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '大田县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '尤溪县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '沙　县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '将乐县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '泰宁县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '建宁县', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '永安市', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鲤城区', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '丰泽区', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '洛江区', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '泉港区', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '惠安县', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '安溪县', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '永春县', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '德化县', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '金门县', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '石狮市', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '晋江市', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '南安市', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '芗城区', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '龙文区', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '云霄县', '35006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '漳浦县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '诏安县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '长泰县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '东山县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '南靖县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '平和县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '华安县', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '龙海市', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '延平区', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '顺昌县', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '浦城县', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '光泽县', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '松溪县', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '政和县', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '邵武市', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '武夷山市', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '建瓯市', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '建阳市', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新罗区', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '长汀县', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '永定县', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '上杭县', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '武平县', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '连城县', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '漳平市', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '蕉城区', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '霞浦县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '古田县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '屏南县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '寿宁县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '周宁县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '柘荣县', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '福安市', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '福鼎市', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东湖区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西湖区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '青云谱区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '湾里区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '青山湖区', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南昌县', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '新建县', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '安义县', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '进贤县', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '昌江区', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '珠山区', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '浮梁县', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '乐平市', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '安源区', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '湘东区', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '莲花县', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '上栗县', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '芦溪县', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '庐山区', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '浔阳区', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '九江县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '武宁县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '修水县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '永修县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '德安县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '星子县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '都昌县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '湖口县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '彭泽县', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '瑞昌市', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '渝水区', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '分宜县', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '月湖区', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '余江县', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '贵溪市', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '章贡区', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '赣　县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '信丰县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '大余县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '上犹县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '崇义县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '安远县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '龙南县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '定南县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '全南县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '宁都县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '于都县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '兴国县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '会昌县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '寻乌县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '石城县', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '瑞金市', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '南康市', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '吉州区', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '青原区', '36008');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '吉安县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '吉水县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '峡江县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '新干县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '永丰县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '泰和县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '遂川县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '万安县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '安福县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '永新县', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '井冈山市', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '袁州区', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '奉新县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '万载县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '上高县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宜丰县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '靖安县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '铜鼓县', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '丰城市', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '樟树市', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '高安市', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '临川区', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南城县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '黎川县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '南丰县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '崇仁县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '乐安县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宜黄县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '金溪县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '资溪县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '东乡县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '广昌县', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '信州区', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '上饶县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '广丰县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '玉山县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '铅山县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '横峰县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '弋阳县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '余干县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '鄱阳县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '万年县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '婺源县', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '德兴市', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '历下区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '市中区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '槐荫区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '天桥区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '历城区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '长清区', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '平阴县', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '济阳县', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '商河县', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '章丘市', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市南区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '市北区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '四方区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '黄岛区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '崂山区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '李沧区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '城阳区', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '胶州市', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '即墨市', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '平度市', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '胶南市', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '莱西市', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '淄川区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '张店区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '博山区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '临淄区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '周村区', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '桓台县', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '高青县', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '沂源县', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市中区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '薛城区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '峄城区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '台儿庄区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '山亭区', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '滕州市', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东营区', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '河口区', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '垦利县', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '利津县', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '广饶县', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '芝罘区', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '福山区', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '牟平区', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '莱山区', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '长岛县', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '龙口市', '37006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '莱阳市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '莱州市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '蓬莱市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '招远市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '86', '栖霞市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '87', '海阳市', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '潍城区', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '寒亭区', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '坊子区', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '奎文区', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '临朐县', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '昌乐县', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '青州市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '诸城市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '寿光市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '安丘市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '高密市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '86', '昌邑市', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市中区', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '任城区', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '微山县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '鱼台县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '金乡县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '嘉祥县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '汶上县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '泗水县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '梁山县', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '曲阜市', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '兖州市', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '邹城市', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '泰山区', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '岱岳区', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '宁阳县', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '东平县', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '新泰市', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '肥城市', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '环翠区', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '文登市', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '荣成市', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '乳山市', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东港区', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '岚山区', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '五莲县', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '莒　县', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '莱城区', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '钢城区', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '兰山区', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '罗庄区', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '河东区', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '沂南县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '郯城县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '沂水县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '苍山县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '费　县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平邑县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '莒南县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '蒙阴县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '临沭县', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '德城区', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '陵　县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '宁津县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '庆云县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '临邑县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '齐河县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平原县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '夏津县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '武城县', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '乐陵市', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '禹城市', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东昌府区', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阳谷县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '莘　县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '茌平县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '东阿县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '冠　县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '高唐县', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '临清市', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '滨城区', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '惠民县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阳信县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '无棣县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '沾化县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '博兴县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '邹平县', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '牡丹区', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '曹　县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '单　县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '成武县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '巨野县', '37017');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '郓城县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '鄄城县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '定陶县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '东明县', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '中原区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '二七区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '管城回族区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '金水区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '上街区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '邙山区', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '中牟县', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '巩义市', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '荥阳市', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '新密市', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '新郑市', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '登封市', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '龙亭区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '顺河回族区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '鼓楼区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '南关区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '郊　区', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '杞　县', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '通许县', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '尉氏县', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '开封县', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '兰考县', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '老城区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西工区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '廛河回族区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '涧西区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '吉利区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '洛龙区', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '孟津县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '新安县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '栾川县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '嵩　县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '汝阳县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '宜阳县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '洛宁县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '伊川县', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '偃师市', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新华区', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '卫东区', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '石龙区', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '湛河区', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '宝丰县', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '叶　县', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '鲁山县', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '郏　县', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '舞钢市', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '汝州市', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '文峰区', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '北关区', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '殷都区', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '龙安区', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '安阳县', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '汤阴县', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '滑　县', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '内黄县', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '林州市', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鹤山区', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '山城区', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '淇滨区', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '浚　县', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '淇　县', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '红旗区', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '卫滨区', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '凤泉区', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '牧野区', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '新乡县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '获嘉县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '原阳县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '延津县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '封丘县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '长垣县', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '卫辉市', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '辉县市', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '解放区', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '中站区', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '马村区', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '山阳区', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '修武县', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '博爱县', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '武陟县', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '温　县', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '济源市', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '沁阳市', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '孟州市', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '华龙区', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '清丰县', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '南乐县', '41009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '范　县', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '台前县', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '濮阳县', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '魏都区', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '许昌县', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '鄢陵县', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '襄城县', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '禹州市', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '长葛市', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '源汇区', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '郾城区', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '召陵区', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '舞阳县', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '临颍县', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '湖滨区', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '渑池县', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '陕　县', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '卢氏县', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '义马市', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '灵宝市', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '宛城区', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '卧龙区', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南召县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '方城县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '西峡县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '镇平县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '内乡县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '淅川县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '社旗县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '唐河县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '新野县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '桐柏县', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '邓州市', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '梁园区', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '睢阳区', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '民权县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '睢　县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '宁陵县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '柘城县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '虞城县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '夏邑县', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '永城市', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '师河区', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '平桥区', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '罗山县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '光山县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '新　县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '商城县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '固始县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '潢川县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '淮滨县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '息　县', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '川汇区', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '扶沟县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '西华县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '商水县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '沈丘县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '郸城县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '淮阳县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '太康县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '鹿邑县', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '项城市', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '驿城区', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '西平县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '上蔡县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '平舆县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '正阳县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '确山县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '泌阳县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '汝南县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '遂平县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '新蔡县', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '江岸区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '江汉区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '乔口区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '汉阳区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '武昌区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '青山区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '洪山区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '东西湖区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '汉南区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '蔡甸区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '江夏区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '黄陂区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', '新洲区', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '黄石港区', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西塞山区', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '下陆区', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '铁山区', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阳新县', '42002');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '大冶市', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '茅箭区', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '张湾区', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '郧　县', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '郧西县', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '竹山县', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '竹溪县', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '房　县', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '丹江口市', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '西陵区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '伍家岗区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '点军区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '猇亭区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '夷陵区', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '远安县', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '兴山县', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '秭归县', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '长阳土家族自治县', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '五峰土家族自治县', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '宜都市', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '当阳市', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '枝江市', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '襄城区', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '樊城区', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '襄阳区', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '南漳县', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '谷城县', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '保康县', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '老河口市', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '枣阳市', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '宜城市', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '梁子湖区', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '华容区', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '鄂城区', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东宝区', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '掇刀区', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '京山县', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '沙洋县', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '钟祥市', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '孝南区', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '孝昌县', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '大悟县', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '云梦县', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '应城市', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '安陆市', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '汉川市', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '沙市区', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '荆州区', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '公安县', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '监利县', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '江陵县', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '石首市', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '洪湖市', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '87', '松滋市', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '黄州区', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '团风县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '红安县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '罗田县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '英山县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '浠水县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '蕲春县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '黄梅县', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '麻城市', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '武穴市', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '咸安区', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '嘉鱼县', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '通城县', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '崇阳县', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '通山县', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '赤壁市', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '曾都区', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '广水市', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '恩施市', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '利川市', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '建始县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '巴东县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '宣恩县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '咸丰县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '来凤县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '鹤峰县', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '仙桃市', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '潜江市', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '天门市', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '神农架林区', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '芙蓉区', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '天心区', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '岳麓区', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '开福区', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '雨花区', '43001');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '长沙县', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '望城县', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宁乡县', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '浏阳市', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '荷塘区', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '芦淞区', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '石峰区', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '天元区', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '株洲县', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '攸　县', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '茶陵县', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '炎陵县', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '醴陵市', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '雨湖区', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '岳塘区', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '湘潭县', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '湘乡市', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '韶山市', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '珠晖区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '雁峰区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '石鼓区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '蒸湘区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '南岳区', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '衡阳县', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '衡南县', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '衡山县', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '衡东县', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '祁东县', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '耒阳市', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '常宁市', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '双清区', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '大祥区', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '北塔区', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '邵东县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '新邵县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '邵阳县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '隆回县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '洞口县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '绥宁县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '新宁县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '城步苗族自治县', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '武冈市', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '岳阳楼区', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '云溪区', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '君山区', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '岳阳县', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '华容县', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '湘阴县', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平江县', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '汨罗市', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '临湘市', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '武陵区', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '鼎城区', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '安乡县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '汉寿县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '澧　县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '临澧县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '桃源县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '石门县', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '津市市', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '永定区', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '武陵源区', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '慈利县', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桑植县', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '资阳区', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '赫山区', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南　县', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桃江县', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '安化县', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '沅江市', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '北湖区', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '苏仙区', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '桂阳县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '宜章县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '永兴县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '嘉禾县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '临武县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '汝城县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '桂东县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '安仁县', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '资兴市', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '芝山区', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '冷水滩区', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '祁阳县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '东安县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '双牌县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '道　县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '江永县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宁远县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '蓝山县', '43011');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '新田县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '江华瑶族自治县', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '鹤城区', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '中方县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '沅陵县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '辰溪县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '溆浦县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '会同县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '麻阳苗族自治县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '新晃侗族自治县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '芷江侗族自治县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '靖州苗族侗族自治县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '通道侗族自治县', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '洪江市', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '娄星区', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '双峰县', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '新化县', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '冷水江市', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '涟源市', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '吉首市', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '泸溪县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '凤凰县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '花垣县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '保靖县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '古丈县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '永顺县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '龙山县', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东山区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '荔湾区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '越秀区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '海珠区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '天河区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '芳村区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '白云区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '黄埔区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '番禺区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '花都区', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '增城市', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '从化市', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '武江区', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '浈江区', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '曲江区', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '始兴县', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '仁化县', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '翁源县', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '乳源瑶族自治县', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '新丰县', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '乐昌市', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '南雄市', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '罗湖区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '福田区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '南山区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '宝安区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '龙岗区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '盐田区', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '香洲区', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '斗门区', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '金湾区', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '龙湖区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '金平区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '濠江区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '潮阳区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '潮南区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '澄海区', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '南澳县', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '禅城区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '南海区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '顺德区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '三水区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '高明区', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '蓬江区', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '江海区', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '新会区', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '台山市', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '开平市', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '鹤山市', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '恩平市', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '赤坎区', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '霞山区', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '坡头区', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '麻章区', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '遂溪县', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '徐闻县', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '廉江市', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '雷州市', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '吴川市', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '茂南区', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '茂港区', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '电白县', '44009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '高州市', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '化州市', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '信宜市', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '端州区', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '鼎湖区', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '广宁县', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '怀集县', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '封开县', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '德庆县', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '高要市', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '四会市', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '惠城区', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '惠阳区', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '博罗县', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '惠东县', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '龙门县', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '梅江区', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '梅　县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '大埔县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '丰顺县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '五华县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平远县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '蕉岭县', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '兴宁市', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城　区', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '海丰县', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '陆河县', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '陆丰市', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '源城区', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '紫金县', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '龙川县', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '连平县', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '和平县', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '东源县', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '江城区', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阳西县', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '阳东县', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '阳春市', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '清城区', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '佛冈县', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '阳山县', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '连山壮族瑶族自治县', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '连南瑶族自治县', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '清新县', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '英德市', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '连州市', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '湘桥区', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '潮安县', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '饶平县', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '榕城区', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '揭东县', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '揭西县', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '惠来县', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '普宁市', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '云城区', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '新兴县', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '郁南县', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '云安县', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '罗定市', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '兴宁区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '青秀区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '江南区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '西乡塘区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '良庆区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '邕宁区', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '武鸣县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '隆安县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '马山县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '上林县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宾阳县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '横　县', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城中区', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '鱼峰区', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '柳南区', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '柳北区', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '柳江县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '柳城县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '鹿寨县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '融安县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '融水苗族自治县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '三江侗族自治县', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '秀峰区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '叠彩区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '象山区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '七星区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '雁山区', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '阳朔县', '45003');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '临桂县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '灵川县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '全州县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '兴安县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '永福县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '灌阳县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '龙胜各族自治县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '资源县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '平乐县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '荔蒲县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '恭城瑶族自治县', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '万秀区', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '蝶山区', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '长洲区', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '苍梧县', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '藤　县', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '蒙山县', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '岑溪市', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '海城区', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '银海区', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '铁山港区', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '合浦县', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '港口区', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '防城区', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '上思县', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '东兴市', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '钦南区', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '钦北区', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '灵山县', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '浦北县', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '港北区', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '港南区', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '覃塘区', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '平南县', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '桂平市', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '玉州区', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '容　县', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '陆川县', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '博白县', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '兴业县', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '北流市', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '右江区', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '田阳县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '田东县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '平果县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '德保县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '靖西县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '那坡县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '凌云县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '乐业县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '田林县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '西林县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '隆林各族自治县', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '八步区', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '昭平县', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '钟山县', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '富川瑶族自治县', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '金城江区', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南丹县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '天峨县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '凤山县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '东兰县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '罗城仫佬族自治县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '环江毛南族自治县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '巴马瑶族自治县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '都安瑶族自治县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '大化瑶族自治县', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '宜州市', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '兴宾区', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '忻城县', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '象州县', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '武宣县', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '金秀瑶族自治县', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '合山市', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '江洲区', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '扶绥县', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '宁明县', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '龙州县', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '大新县', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '天等县', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '凭祥市', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '秀英区', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '龙华区', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '琼山区', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '美兰区', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '46002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '五指山市', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '琼海市', '46090');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '儋州市', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '文昌市', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '万宁市', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '东方市', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '定安县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '屯昌县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '澄迈县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '临高县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '白沙黎族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '昌江黎族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '乐东黎族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '陵水黎族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '保亭黎族苗族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '琼中黎族苗族自治县', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '西沙群岛', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '南沙群岛', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '39', '中沙群岛的岛礁及其海域', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '万州区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '涪陵区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '渝中区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '大渡口区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '江北区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '沙坪坝区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '九龙坡区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '南岸区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '北碚区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '万盛区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '双桥区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '渝北区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '巴南区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '黔江区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '长寿区', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '綦江县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '潼南县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '铜梁县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '大足县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '荣昌县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '璧山县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '梁平县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '城口县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '丰都县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '垫江县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '武隆县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '忠　县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '开　县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '云阳县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '奉节县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '巫山县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '巫溪县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '40', '石柱土家族自治县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '41', '秀山土家族苗族自治县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '42', '酉阳土家族苗族自治县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '43', '彭水苗族土家族自治县', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '江津市', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '合川市', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '永川市', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '南川市', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '锦江区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '青羊区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '金牛区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '武侯区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '成华区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '龙泉驿区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '青白江区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '新都区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '温江区', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '金堂县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '双流县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '郫　县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '大邑县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '蒲江县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '新津县', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '都江堰市', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '彭州市', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '邛崃市', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '崇州市', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '自流井区', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '贡井区', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '大安区', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '沿滩区', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '荣　县', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '富顺县', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东　区', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '西　区', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '仁和区', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '米易县', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '盐边县', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '江阳区', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '纳溪区', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '龙马潭区', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '泸　县', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '合江县', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '叙永县', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '古蔺县', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '旌阳区', '51006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '中江县', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '罗江县', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '广汉市', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '什邡市', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '绵竹市', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '涪城区', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '游仙区', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '三台县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '盐亭县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '安　县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '梓潼县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '北川羌族自治县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '平武县', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '江油市', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市中区', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '元坝区', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '朝天区', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '旺苍县', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '青川县', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '剑阁县', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '苍溪县', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '船山区', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '安居区', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '蓬溪县', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '射洪县', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '大英县', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市中区', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '东兴区', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '威远县', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '资中县', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '隆昌县', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '市中区', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '沙湾区', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '五通桥区', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '金口河区', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '犍为县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '井研县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '夹江县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '沐川县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '峨边彝族自治县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '马边彝族自治县', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '峨眉山市', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '顺庆区', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '高坪区', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '嘉陵区', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南部县', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '营山县', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '蓬安县', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '仪陇县', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '西充县', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '阆中市', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '东坡区', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '仁寿县', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '彭山县', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '洪雅县', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '丹棱县', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '青神县', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '翠屏区', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '宜宾县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '南溪县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '江安县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '长宁县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '高　县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '珙　县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '筠连县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '兴文县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '屏山县', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '广安区', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '岳池县', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '武胜县', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '邻水县', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '华莹市', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '通川区', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '达　县', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '宣汉县', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '开江县', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '大竹县', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '渠　县', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '万源市', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '雨城区', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '名山县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '荥经县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '汉源县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '石棉县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '天全县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '芦山县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '宝兴县', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '巴州区', '51019');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '通江县', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '南江县', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '平昌县', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '雁江区', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '安岳县', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '乐至县', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '简阳市', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '汶川县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '理　县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '茂　县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '松潘县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '九寨沟县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '金川县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '小金县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '黑水县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '马尔康县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '壤塘县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '阿坝县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '若尔盖县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '红原县', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '康定县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '泸定县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '丹巴县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '九龙县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '雅江县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '道孚县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '炉霍县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '甘孜县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '新龙县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '德格县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '白玉县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '石渠县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '色达县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '理塘县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '巴塘县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '乡城县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '稻城县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '得荣县', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '西昌市', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '木里藏族自治县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '盐源县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '德昌县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '会理县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '会东县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '宁南县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '普格县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '布拖县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '金阳县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '昭觉县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '喜德县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '冕宁县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '越西县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '甘洛县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '美姑县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '雷波县', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '南明区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '云岩区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '花溪区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '乌当区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '白云区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '小河区', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '开阳县', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '息烽县', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '修文县', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '清镇市', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '钟山区', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '六枝特区', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '水城县', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '盘　县', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '红花岗区', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '汇川区', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '遵义县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '桐梓县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '绥阳县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '正安县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '道真仡佬族苗族自治县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '务川仡佬族苗族自治县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '凤冈县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '湄潭县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '余庆县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '习水县', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '赤水市', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '仁怀市', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '西秀区', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '平坝县', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '普定县', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '镇宁布依族苗族自治县', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '关岭布依族苗族自治县', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '紫云苗族布依族自治县', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '铜仁市', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '江口县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '玉屏侗族自治县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '石阡县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '思南县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '印江土家族苗族自治县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '德江县', '52022');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '沿河土家族自治县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '松桃苗族自治县', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '万山特区', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '兴义市', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '兴仁县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '普安县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '晴隆县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '贞丰县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '望谟县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '册亨县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '安龙县', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '毕节市', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '大方县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '黔西县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '金沙县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '织金县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '纳雍县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '威宁彝族回族苗族自治县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '赫章县', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '凯里市', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '黄平县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '施秉县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '三穗县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '镇远县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '岑巩县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '天柱县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '锦屏县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '剑河县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '台江县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '黎平县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '榕江县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '从江县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '雷山县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '麻江县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '丹寨县', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '都匀市', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '福泉市', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '荔波县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '贵定县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '瓮安县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '独山县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '平塘县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '罗甸县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '长顺县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '龙里县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '惠水县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '三都水族自治县', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '五华区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '盘龙区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '官渡区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '西山区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '东川区', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '呈贡县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '晋宁县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '富民县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '宜良县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '石林彝族自治县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '嵩明县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '禄劝彝族苗族自治县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '寻甸回族彝族自治县', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '安宁市', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '麒麟区', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '马龙县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '陆良县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '师宗县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '罗平县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '富源县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '会泽县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '沾益县', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '宣威市', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '红塔区', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '江川县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '澄江县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '通海县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '华宁县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '易门县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '峨山彝族自治县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '新平彝族傣族自治县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '元江哈尼族彝族傣族自治县', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '隆阳区', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '施甸县', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '腾冲县', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '龙陵县', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '昌宁县', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '昭阳区', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '鲁甸县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '巧家县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '盐津县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '大关县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '永善县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '绥江县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '镇雄县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '彝良县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '威信县', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '水富县', '53006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '古城区', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '玉龙纳西族自治县', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '永胜县', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '华坪县', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宁蒗彝族自治县', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '翠云区', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '普洱哈尼族彝族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '墨江哈尼族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '景东彝族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '景谷傣族彝族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '镇沅彝族哈尼族拉祜族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '江城哈尼族彝族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '孟连傣族拉祜族佤族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '澜沧拉祜族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '西盟佤族自治县', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '临翔区', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '凤庆县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '云　县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '永德县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '镇康县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '双江拉祜族佤族布朗族傣族自治县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '耿马傣族佤族自治县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '沧源佤族自治县', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '楚雄市', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '双柏县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '牟定县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '南华县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '姚安县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '大姚县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '永仁县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '元谋县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '武定县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '禄丰县', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '个旧市', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '开远市', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '蒙自县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '屏边苗族自治县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '建水县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '石屏县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '弥勒县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '泸西县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '元阳县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '红河县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '金平苗族瑶族傣族自治县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '绿春县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '河口瑶族自治县', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '文山县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '砚山县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '西畴县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '麻栗坡县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '马关县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '丘北县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '广南县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '富宁县', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '景洪市', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '勐海县', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '勐腊县', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '大理市', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '漾濞彝族自治县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '祥云县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '宾川县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '弥渡县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '南涧彝族自治县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '巍山彝族回族自治县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '永平县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '云龙县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '洱源县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '剑川县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '鹤庆县', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '瑞丽市', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '潞西市', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '梁河县', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '盈江县', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '陇川县', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '泸水县', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '福贡县', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '贡山独龙族怒族自治县', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '兰坪白族普米族自治县', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '香格里拉县', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '德钦县', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '维西傈僳族自治县', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城关区', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '林周县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '当雄县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '尼木县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '曲水县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '堆龙德庆县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '达孜县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '墨竹工卡县', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '昌都县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '江达县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '贡觉县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '类乌齐县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '丁青县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '察雅县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '八宿县', '54021');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '左贡县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '芒康县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '洛隆县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '边坝县', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '乃东县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '扎囊县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '贡嘎县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '桑日县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '琼结县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '曲松县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '措美县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '洛扎县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '加查县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '隆子县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '错那县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '浪卡子县', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '日喀则市', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '南木林县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '江孜县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '定日县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '萨迦县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '拉孜县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '昂仁县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '谢通门县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '白朗县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '仁布县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '康马县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '定结县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '仲巴县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '亚东县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '吉隆县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '聂拉木县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '萨嘎县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '岗巴县', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '那曲县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '嘉黎县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '比如县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '聂荣县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '安多县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '申扎县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '索　县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '班戈县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '巴青县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '尼玛县', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '普兰县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '札达县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '噶尔县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '日土县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '革吉县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '改则县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '措勤县', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '林芝县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '工布江达县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '米林县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '墨脱县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '波密县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '察隅县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '朗　县', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '新城区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '碑林区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '莲湖区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '灞桥区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '未央区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '雁塔区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '阎良区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '临潼区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '长安区', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '蓝田县', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '周至县', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '户　县', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '高陵县', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '王益区', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '印台区', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '耀州区', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '宜君县', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '渭滨区', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '金台区', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '陈仓区', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '凤翔县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '岐山县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '扶风县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '眉　县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '陇　县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '千阳县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '麟游县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '凤　县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '太白县', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '秦都区', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '杨凌区', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '渭城区', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '三原县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '泾阳县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '乾　县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '礼泉县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '永寿县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '彬　县', '61004');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '长武县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '旬邑县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '淳化县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '武功县', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '兴平市', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '临渭区', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '华　县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '潼关县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '大荔县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '合阳县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '澄城县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '蒲城县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '白水县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '富平县', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '韩城市', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '华阴市', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '宝塔区', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '延长县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '延川县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '子长县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '安塞县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '志丹县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '吴旗县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '甘泉县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '富　县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '洛川县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '宜川县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '黄龙县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '黄陵县', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '汉台区', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '南郑县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '城固县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '洋　县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '西乡县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '勉　县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宁强县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '略阳县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '镇巴县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '留坝县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '佛坪县', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '榆阳区', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '神木县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '府谷县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '横山县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '靖边县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '定边县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '绥德县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '米脂县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '佳　县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '吴堡县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '清涧县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '子洲县', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '汉滨区', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '汉阴县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '石泉县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '宁陕县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '紫阳县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '岚皋县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '平利县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '镇坪县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '旬阳县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '白河县', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '商州区', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '洛南县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '丹凤县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '商南县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '山阳县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '镇安县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '柞水县', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城关区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '七里河区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '西固区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '安宁区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '红古区', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '永登县', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '皋兰县', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '榆中县', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '金川区', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '永昌县', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '白银区', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '平川区', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '靖远县', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '会宁县', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '景泰县', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '秦城区', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '北道区', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '清水县', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '秦安县', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '甘谷县', '62005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '武山县', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '张家川回族自治县', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '凉州区', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '民勤县', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '古浪县', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '天祝藏族自治县', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '甘州区', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '肃南裕固族自治县', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '民乐县', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '临泽县', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '高台县', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '山丹县', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '崆峒区', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '泾川县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '灵台县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '崇信县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '华亭县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '庄浪县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '静宁县', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '肃州区', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '金塔县', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '安西县', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '肃北蒙古族自治县', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '阿克塞哈萨克族自治县', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '玉门市', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '敦煌市', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '西峰区', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '庆城县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '环　县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '华池县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '合水县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '正宁县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '宁　县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '镇原县', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '安定区', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '通渭县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '陇西县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '渭源县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '临洮县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '漳　县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '岷　县', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '武都区', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '成　县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '文　县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '宕昌县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '康　县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '西和县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '礼　县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '徽　县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '两当县', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '临夏市', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '临夏县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '康乐县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '永靖县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '广河县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '和政县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '东乡族自治县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '积石山保安族东乡族撒拉族自治县', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '合作市', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '临潭县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '卓尼县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '舟曲县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '迭部县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '玛曲县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '碌曲县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '夏河县', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '城东区', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '城中区', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '城西区', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '城北区', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '大通回族土族自治县', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '湟中县', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '湟源县', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '平安县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '民和回族土族自治县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '乐都县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '互助土族自治县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '化隆回族自治县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '循化撒拉族自治县', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '门源回族自治县', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '祁连县', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '海晏县', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '刚察县', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '同仁县', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '尖扎县', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '泽库县', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '河南蒙古族自治县', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '共和县', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '同德县', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '贵德县', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '兴海县', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '贵南县', '63025');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '玛沁县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '班玛县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '甘德县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '达日县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '久治县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '玛多县', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '玉树县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '杂多县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '称多县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '治多县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '囊谦县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '曲麻莱县', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '格尔木市', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '德令哈市', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '乌兰县', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '都兰县', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '天峻县', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '兴庆区', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '西夏区', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '金凤区', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '永宁县', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '贺兰县', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '灵武市', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '大武口区', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '惠农区', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '平罗县', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '利通区', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '盐池县', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '同心县', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '青铜峡市', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '原州区', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '西吉县', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '隆德县', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '泾源县', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '彭阳县', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '沙坡头区', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '中宁县', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '海原县', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '天山区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '沙依巴克区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '新市区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '水磨沟区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '头屯河区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '达坂城区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '东山区', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '乌鲁木齐县', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '市辖区', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '独山子区', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '克拉玛依区', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '白碱滩区', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '乌尔禾区', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '吐鲁番市', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '鄯善县', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '托克逊县', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '哈密市', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '巴里坤哈萨克自治县', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '伊吾县', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '昌吉市', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '阜康市', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '米泉市', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '呼图壁县', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '玛纳斯县', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '奇台县', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '吉木萨尔县', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '木垒哈萨克自治县', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '博乐市', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '精河县', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '温泉县', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '库尔勒市', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '轮台县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '尉犁县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '若羌县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '且末县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '焉耆回族自治县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '和静县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '和硕县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '博湖县', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '阿克苏市', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '温宿县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '库车县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '沙雅县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '新和县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '拜城县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '乌什县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '阿瓦提县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '柯坪县', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '阿图什市', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '阿克陶县', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '阿合奇县', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '乌恰县', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '喀什市', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '疏附县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '疏勒县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '英吉沙县', '65031');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '泽普县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '莎车县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '叶城县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '麦盖提县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '岳普湖县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '伽师县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '巴楚县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '塔什库尔干塔吉克自治县', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '和田市', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '和田县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '墨玉县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '皮山县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '洛浦县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '策勒县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '于田县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '民丰县', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '伊宁市', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '奎屯市', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '伊宁县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '察布查尔锡伯自治县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '霍城县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '巩留县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '新源县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '昭苏县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '特克斯县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '尼勒克县', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '塔城市', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '乌苏市', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '额敏县', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '沙湾县', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '托里县', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '裕民县', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '和布克赛尔蒙古自治县', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '阿勒泰市', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '布尔津县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '富蕴县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '福海县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '哈巴河县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '青河县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '吉木乃县', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '石河子市', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '阿拉尔市', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '图木舒克市', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '五家渠市', '65090');
commit;