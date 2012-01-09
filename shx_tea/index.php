<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//最新新闻动态
$newsRows = getRows("news order by create_date desc limit 0,5",$db,"id,title,create_date");
$smarty->assign("newsRows",$newsRows);

//茶文化
$newsTypeTRows = getRows("news where type_id='3' order by create_date desc limit 0,5",$db,"id,title");
$smarty->assign("newsTypeTRows",$newsTypeTRows);

//品茶之道
$newsTypeFRows = getRows("news where type_id='4' order by create_date desc limit 0,5",$db,"id,title");
$smarty->assign("newsTypeFRows",$newsTypeFRows);

//茶楼环境->名茶品鉴
$prodRows = getRows("prod order by create_date desc limit 0,5",$db,"id,prod_pic ");
$smarty->assign("prodRows",$prodRows);

//茶楼影集->最新特惠
$cheapRows = getRows("prod where state='1' order by create_date desc limit 0,2",$db,"id,prod_name,prod_pic,cheap_desc ");
$smarty->assign("cheapRows",$cheapRows);

//消费指南
$guideInfo = getInfo("comm_code where type_name='Guide_Left'",$db,"type_value");
$smarty->assign("guideIndexInfo",html_entity_decode($guideInfo[type_value]));

//首页简介
$aboutUsInfo = getInfo("comm_code where type_name='AboutUs_Index'",$db,"type_value,type_code");
$smarty->assign("aboutUsInfo_Text",html_entity_decode($aboutUsInfo[type_value]));
$smarty->assign("aboutUsInfo_Image",$aboutUsInfo[type_code]);

$smarty->display("index.htm");
?>
