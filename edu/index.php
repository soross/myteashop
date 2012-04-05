<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//快速导航
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

//服务专区
$serviceList = getListBySql("select id,type_name from type where remark is not null order by remark limit 0,9",$db);
$smarty->assign('servicelist',$serviceList);

//最新公告
$newList = getListBySql("select id,title from news where type_id='15' order by create_date limit 0,8",$db);
$smarty->assign('newlist',$newList);

//热门专业1
$hotList = getListBySql("select id,title from news where type_id='1' order by create_date limit 0,8",$db);
$smarty->assign('hotlist',$hotList);

//自学考试2
$selfList = getListBySql("select id,title from news where type_id='2' order by create_date limit 0,8",$db);
$smarty->assign('selflist',$selfList);

////成人高考3
$crList = getListBySql("select id,title from news where type_id='3' order by create_date limit 0,8",$db);
$smarty->assign('crlist',$crList);

//远程教育4
$remoteList = getListBySql("select id,title from news where type_id='4' order by create_date limit 0,8",$db);
$smarty->assign('remotelist',$remoteList);

//其他热门5
$otherList = getListBySql("select id,title from news where type_id='5' order by create_date limit 0,8",$db);
$smarty->assign('otherlist',$otherList);

//考研培训6
$kyList = getListBySql("select id,title from news where type_id='6' order by create_date limit 0,8",$db);
$smarty->assign('kylist',$kyList);

//会计培训7
$kjList = getListBySql("select id,title from news where type_id='7' order by create_date limit 0,8",$db);
$smarty->assign('kjlist',$kjList);

//计算机培训8
$jsjList = getListBySql("select id,title from news where type_id='8' order by create_date limit 0,8",$db);
$smarty->assign('jsjlist',$jsjList);

//资料下载9
$downloadList = getListBySql("select id,title from news where type_id='9' order by create_date limit 0,8",$db);
$smarty->assign('downloadlist',$downloadList);

//关于学历11
$xlList = getListBySql("select id,title from news where type_id='11' order by create_date limit 0,8",$db);
$smarty->assign('xllist',$xlList);

//职称评审10
$zcpsList = getListBySql("select id,title from news where type_id='10' order by create_date limit 0,8",$db);
$smarty->assign('zcpslist',$zcpsList);

//合作院校12
$parterList = getListBySql("select id,title from news where type_id='12' order by create_date limit 0,8",$db);
$smarty->assign('parterlist',$parterList);

//友情链接
$links = getListBySql("select * from link order by remark",$db);
$smarty->assign('linklist',$links);

$smarty->display("index.htm");
?>
