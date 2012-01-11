<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$infoen = getRows(" comm_code where lang='en' and type_name='Index_AD'" ,$db);
$smarty->assign("infoen",$infoen);

$infocn = getRows(" comm_code where lang='zh_cn' and type_name='Index_AD'" ,$db);
$smarty->assign("infocn",$infocn);

$smarty->display("indexad.html");
?>
