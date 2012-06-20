<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");

//栏目类型--课程

$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

//联系我们
$infocn = getInfo(" boya_config where  comm_type='Contact'" ,$db);
$smarty->assign("infocn",$infocn);

$infocn_type = getInfo(" boya_type where  id='4'" ,$db);
$smarty->assign("infocn_type",$infocn_type);




$smarty->display("lxwm.html");
?>
