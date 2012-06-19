<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getListBySql("select * from boya_config where comm_type='AboutBoya'",$db);
$smarty->assign("aboutInfo",$list[0]);


$smarty->display("aboutme.html");
?>
