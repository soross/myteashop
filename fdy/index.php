<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


//轮放
$adList = getList("comm_code where comm_type='Index_AD' order by id",$db,"comm_type,comm_value,comm_code ");
$smarty->assign("adlist",$adList);

/**
//
$newslist = getList("news where lang='".$currlang."' order by create_date limit 0,8",$db);
$smarty->assign("newslist",$newslist);

//案例
$caselist = getList("obj_case where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("caselist",$caselist);


//产品
$prodlist = getList("product where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("prodlist",$prodlist);
**/


//简介About
$aboutusInfo = getObject("comm_code where comm_code='About'",$db,"comm_value");
$smarty->assign("aboutInfo",html_entity_decode($aboutusInfo[comm_value]));

//优势Superiority
$superiorityInfo = getObject("comm_code where comm_code='Superiority'",$db,"comm_value");
$smarty->assign("superiorityInfo",html_entity_decode($superiorityInfo[comm_value]));

//合作伙伴Partner
$parentInfo = getObject("comm_code where comm_code='Partner'",$db,"comm_value");
$smarty->assign("parentInfo",html_entity_decode($superiorityInfo[comm_value]));

$smarty->display("index.htm");
?>
