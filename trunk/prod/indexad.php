<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getList(" comm_code where comm_type='Index_AD'" ,$db);
$smarty->assign("info",$info);

$smarty->display("indexad.html");
?>
