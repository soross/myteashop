<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getList(" boya_config where comm_type='AD_Images'" ,$db);
$smarty->assign("info",$info);

$smarty->display("ad.html");
?>
