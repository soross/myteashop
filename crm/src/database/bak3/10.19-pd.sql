insert into t_power (id,powername,url,parentid,sortid) values(187,'生产厂家列表','/admin/manu.do?task=ManuList'||'&'||'modfunid=187','86',1);
insert into t_power (id,powername,url,parentid,sortid) values(188,'添加生产厂家','/admin/manu.do?task=toAddManu'||'&'||'modfunid=187','86',2);
insert into t_power (id,powername,url,parentid,sortid) values(189,'订购厂家列表','/admin/ordermanu.do?task=OrderManuList'||'&'||'modfunid=189','87',1);
insert into t_power (id,powername,url,parentid,sortid) values(190,'添加订购厂家','/admin/ordermanu.do?task=toAddOrderManu'||'&'||'modfunid=190','87',2);
insert into t_power (id,powername,url,parentid,sortid) values(185,'签约单位列表','/admin/signUnit.do?task=signUnitList'||'&'||'modfunid=185','88',1);
insert into t_power (id,powername,url,parentid,sortid) values(186,'添加签约单位','/admin/signUnit.do?task=toAddSignUnit'||'&'||'modfunid=186','88',2);
delete from t_power where id in('88','87','86');
insert into t_power (id,powername,url,parentid,sortid) values(88,'签约单位','/admin/signUnit.do?task=signUnitList'||'&'||'modfunid=88','77',11);
insert into t_power (id,powername,url,parentid,sortid) values(87,'订购厂家','/admin/ordermanu.do?task=OrderManuList'||'&'||'modfunid=87','77',10);
insert into t_power (id,powername,url,parentid,sortid) values(86,'生产厂家','/admin/manu.do?task=ManuList'||'&'||'modfunid=86','77',9);