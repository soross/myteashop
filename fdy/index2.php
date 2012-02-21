<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


//轮放
$adList = getList("comm_code where comm_type='Index_AD' order by id",$db,"comm_type,comm_value,comm_code ");
$smarty->assign("adlist",$adList);

/**
//新闻
$newslist = getList("news where lang='".$currlang."' order by create_date limit 0,8",$db);
$smarty->assign("newslist",$newslist);

//案例
$caselist = getList("obj_case where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("caselist",$caselist);


//产品
$prodlist = getList("product where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("prodlist",$prodlist);

//简介AboutUs
$aboutusInfo = getObject("comm_code where type_name='AboutUsInfo'",$db,"type_value_".$currlang." as info");
$smarty->assign("aboutUsInfo",html_entity_decode($aboutusInfo[info]));

//联系我们ContactUs
$contactusInfo = getObject("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));
**/


$smarty->display("index.html");
?>
