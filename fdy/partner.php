<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','265');
$smarty->assign('nav_son_style','237');

//合作伙伴
$partnerList = getList("comm_code a,comm_code b where a.id=b.fkid and a.comm_code='Partner'",$db,"b.comm_value,b.comm_type");
$smarty->assign('partnerList',$partnerList);

//合作商家logo
$partnerLogoList = getList("comm_code where comm_type='PartnerLogo'",$db,"comm_code");
$smarty->assign('partnerLogoList',$partnerLogoList);

$smarty->display("partner.htm");
?>

