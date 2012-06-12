
drop table vip_city cascade constraints;

/*==============================================================*/
/* Table: vip_city                                              */
/*==============================================================*/
create table vip_city  (
   n_id                 NUMBER,
   v_code               CHAR(2),
   v_name               VARCHAR2(22),
   v_province           CHAR(3),
   constraint PK_VIP_CITY primary key (n_id)
);

comment on table vip_city is '县市表';
comment on column vip_city.n_id is '编号';
comment on column vip_city.v_code is '代码';
comment on column vip_city.v_name is '名称';
comment on column vip_city.v_province is '省编号';

-- 创建序列
drop sequence seq_city;
create sequence seq_city;

-- 添加初始数据
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '市辖区', '110');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '县', '110');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '市辖区', '120');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '县', '120');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '石家庄市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '唐山市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '秦皇岛市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '邯郸市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '邢台市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '保定市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '张家口市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '承德市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '沧州市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '廊坊市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '衡水市', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '太原市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '大同市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '阳泉市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '长治市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '晋城市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '朔州市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '晋中市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '运城市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '忻州市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '临汾市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '吕梁市', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '呼和浩特市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '包头市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '乌海市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '赤峰市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '通辽市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '鄂尔多斯市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '呼伦贝尔市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '巴彦淖尔市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '乌兰察布市', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '兴安盟', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '锡林郭勒盟', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '阿拉善盟', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '沈阳市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '大连市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '鞍山市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '抚顺市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '本溪市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '丹东市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '锦州市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '营口市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '阜新市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '辽阳市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '盘锦市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '铁岭市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '朝阳市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '葫芦岛市', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '长春市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '吉林市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '四平市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '辽源市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '通化市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '白山市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '松原市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '白城市', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '延边朝鲜族自治州', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '哈尔滨市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '齐齐哈尔市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '鸡西市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '鹤岗市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '双鸭山市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '大庆市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '伊春市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '佳木斯市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '七台河市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '牡丹江市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '黑河市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '绥化市', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '大兴安岭地区', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '市辖区', '310');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '县', '310');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '南京市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '无锡市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '徐州市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '常州市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '苏州市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '南通市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '连云港市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '淮安市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '盐城市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '扬州市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '镇江市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '泰州市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '宿迁市', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '杭州市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '宁波市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '温州市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '嘉兴市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '湖州市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '绍兴市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '金华市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '衢州市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '舟山市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '台州市', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '丽水市', '330');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '合肥市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '芜湖市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '蚌埠市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '淮南市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '马鞍山市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '淮北市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '铜陵市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '安庆市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '黄山市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '滁州市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '阜阳市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '宿州市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '巢湖市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '六安市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '亳州市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '池州市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '宣城市', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '福州市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '厦门市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '莆田市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '三明市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '泉州市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '漳州市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '南平市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '龙岩市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '宁德市', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '南昌市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '景德镇市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '萍乡市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '九江市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '新余市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '鹰潭市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '赣州市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '吉安市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '宜春市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '抚州市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '上饶市', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '济南市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '青岛市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '淄博市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '枣庄市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '东营市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '烟台市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '潍坊市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '济宁市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '泰安市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '威海市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '日照市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '莱芜市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '临沂市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '德州市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '聊城市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '滨州市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '荷泽市', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '郑州市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '开封市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '洛阳市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '平顶山市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '安阳市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '鹤壁市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '新乡市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '焦作市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '濮阳市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '许昌市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '漯河市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '三门峡市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '南阳市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '商丘市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '信阳市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '周口市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '驻马店市', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '武汉市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '黄石市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '十堰市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '宜昌市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '襄樊市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '鄂州市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '荆门市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '孝感市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '荆州市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '黄冈市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '咸宁市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '随州市', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '恩施土家族苗族自治州', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', '省直辖行政单位', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '长沙市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '株洲市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '湘潭市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '衡阳市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '邵阳市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '岳阳市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '常德市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '张家界市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '益阳市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '郴州市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '永州市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '怀化市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '娄底市', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '湘西土家族苗族自治州', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '广州市', '440');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '韶关市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '深圳市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '珠海市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '汕头市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '佛山市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '江门市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '湛江市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '茂名市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '肇庆市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '惠州市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '梅州市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '汕尾市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '河源市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '阳江市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '清远市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '19', '东莞市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '20', '中山市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '51', '潮州市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '52', '揭阳市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '53', '云浮市', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '南宁市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '柳州市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '桂林市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '梧州市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '北海市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '防城港市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '钦州市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '贵港市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '玉林市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '百色市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '贺州市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '河池市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '来宾市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '崇左市', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '海口市', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '三亚市', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', '省直辖县级行政单位', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '市辖区', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '县', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '市', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '成都市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '自贡市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '攀枝花市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '泸州市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '德阳市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '绵阳市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '广元市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '遂宁市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '内江市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '乐山市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '南充市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '眉山市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '宜宾市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '广安市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '达州市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '雅安市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '19', '巴中市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '20', '资阳市', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '32', '阿坝藏族羌族自治州', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '33', '甘孜藏族自治州', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '34', '凉山彝族自治州', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '贵阳市', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '六盘水市', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '遵义市', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '安顺市', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '铜仁地区', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '黔西南布依族苗族自治州', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '毕节地区', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '黔东南苗族侗族自治州', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '黔南布依族苗族自治州', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '昆明市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '曲靖市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '玉溪市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '保山市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '昭通市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '丽江市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '思茅市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '临沧市', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '楚雄彝族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '红河哈尼族彝族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '文山壮族苗族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '西双版纳傣族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '大理白族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '德宏傣族景颇族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '33', '怒江傈僳族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '34', '迪庆藏族自治州', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '拉萨市', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '昌都地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '山南地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '日喀则地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '那曲地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '阿里地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '林芝地区', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '西安市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '铜川市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '宝鸡市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '咸阳市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '渭南市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '延安市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '汉中市', '610');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '榆林市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '安康市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '商洛市', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '兰州市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '嘉峪关市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '金昌市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '白银市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '天水市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '武威市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '张掖市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '平凉市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '酒泉市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '庆阳市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '定西市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '陇南市', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '临夏回族自治州', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '30', '甘南藏族自治州', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '西宁市', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '海东地区', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '海北藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '黄南藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '海南藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '果洛藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '玉树藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '海西蒙古族藏族自治州', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '银川市', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '石嘴山市', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '吴忠市', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '固原市', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '中卫市', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '乌鲁木齐市', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '克拉玛依市', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '吐鲁番地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '哈密地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '昌吉回族自治州', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '博尔塔拉蒙古自治州', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '巴音郭楞蒙古自治州', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '阿克苏地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '30', '克孜勒苏柯尔克孜自治州', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '喀什地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '32', '和田地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '40', '伊犁哈萨克自治州', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '42', '塔城地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '43', '阿勒泰地区', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', '省直辖行政单位', '650');
commit;