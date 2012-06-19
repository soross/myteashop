<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getListBySql("select * from boya_config where comm_type='Buttom'",$db);
$smarty->assign("ButtomInfo",$list[0]);

$smarty->display("buttom.html");
?>
