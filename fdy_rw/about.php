<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','197');
$smarty->assign('nav_son_style','235');

//联系方式
$aboutList = getList("comm_code a,comm_code b where a.id=b.fkid and a.comm_code='About'",$db,"b.comm_value,b.comm_type");
$smarty->assign('aboutList',$aboutList);

$smarty->display("about.htm");
?>
