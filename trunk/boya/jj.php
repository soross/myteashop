<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");
//À¸Ä¿ÀàÐÍ

$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

//¼ò½é
$infocn = getInfo(" boya_config where comm_type='Intro'" ,$db);
$smarty->assign("infocn",$infocn);

$infocn_type = getInfo(" boya_type where  pid='1' and seq='1'" ,$db);
$smarty->assign("infocn_type",$infocn_type);



$smarty->display("jj.html");
?>

