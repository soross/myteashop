<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


//轮放
$adList = getList("comm_code where comm_type='Index_AD' order by id",$db,"comm_type,comm_value,comm_code ");
$smarty->assign("adlist",$adList);


//简介About
$aboutusInfo = getObject("comm_code where comm_code='About'",$db,"comm_value");
$smarty->assign("aboutInfo",html_entity_decode($aboutusInfo[comm_value]));

//优势Superiority
$superiorityInfo = getObject("comm_code where comm_code='Superiority'",$db,"comm_value");
$smarty->assign("superiorityInfo",html_entity_decode($superiorityInfo[comm_value]));

//合作伙伴Partner
$parentInfo = getObject("comm_code where comm_code='Partner'",$db,"comm_value");
$smarty->assign("parentInfo",html_entity_decode($superiorityInfo[comm_value]));

//成功案例
$caseList = getList("`case` order by create_date desc limit 0,3",$db,"id,case_name");
$smarty->assign('caseList',$caseList);

$smarty->display("index.htm");
?>
