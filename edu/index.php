<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//���ٵ���
$navList = getListBySql("select id,path from news where isshow='1' order by create_date desc limit 0,5",$db);
$smarty->assign('navlist',$navList);
//AD
$adList = getListBySql("select comm_code,comm_value,remark,flag from comm_code where comm_type='Index_AD'",$db);
$smarty->assign('adlist',$adList);

//school logo
$schoolList = getListBySql("select comm_code,comm_value,remark,flag from comm_code where comm_type='School_Logo'",$db);
$smarty->assign('schoollist',$schoolList);

//cert list
$certList = getListBySql("select id,cert_name,path from cert order by create_date desc limit 0,10",$db);
$smarty->assign('certlist',$certList);

//����ר��
$serviceList = getListBySql("select id,type_name from type where remark is not null order by remark limit 0,9",$db);
$smarty->assign('servicelist',$serviceList);

//�ȵ��Ƽ�
$newList = getListBySql("select id,title from news where type_id in(select id from type where id='1' or pid='1') order by create_date limit 0,8",$db);
$smarty->assign('newlist',$newList);

//��������
$hotList = getListBySql("select id,title from news where type_id in(select id from type where id='15' or pid='15') order by create_date limit 0,8",$db);
$smarty->assign('hotlist',$hotList);

//��ѧ����2
$selfList = getListBySql("select id,title from news where type_id in(select id from type where id='2' or pid='2') order by create_date limit 0,8",$db);
$smarty->assign('selflist',$selfList);

////���˸߿�3
$crList = getListBySql("select id,title from news where type_id in(select id from type where id='3' or pid='3') order by create_date limit 0,8",$db);
$smarty->assign('crlist',$crList);

//Զ�̽���4
$remoteList = getListBySql("select id,title from news where type_id in(select id from type where id='4' or pid='4') order by create_date limit 0,8",$db);
$smarty->assign('remotelist',$remoteList);

//������5
$otherList = getListBySql("select id,title from news where type_id in(select id from type where id='5' or pid='5') order by create_date limit 0,8",$db);
$smarty->assign('otherlist',$otherList);

//��ְ�о���6
$kyList = getListBySql("select id,title from news where type_id in(select id from type where id='6' or pid='6') order by create_date limit 0,8",$db);
$smarty->assign('kylist',$kyList);

//˼����֤8
$kjList = getListBySql("select id,title from news where type_id in(select id from type where id='8' or pid='8') order by create_date limit 0,8",$db);
$smarty->assign('kjlist',$kjList);


$jsjList = getListBySql("select id,title from news where type_id in(select id from type where id='10' or pid='10') order by create_date limit 0,8",$db);
$smarty->assign('jsjlist',$jsjList);

//��������9
$downloadList = getListBySql("select id,title from news where type_id in(select id from type where id='9' or pid='9') order by create_date limit 0,8",$db);
$smarty->assign('downloadlist',$downloadList);

//��ҵר��7
$xlList = getListBySql("select id,title from news where type_id in(select id from type where id='7' or pid='7') order by create_date limit 0,8",$db);
$smarty->assign('xllist',$xlList);

//����ԺУ12
$zcpsList = getListBySql("select id,title from news where type_id in(select id from type where id='12' or pid='12') order by create_date limit 0,8",$db);
$smarty->assign('zcpslist',$zcpsList);

//��������
$links = getListBySql("select * from link order by remark",$db);
$smarty->assign('linklist',$links);

$smarty->display("index.htm");
?>
