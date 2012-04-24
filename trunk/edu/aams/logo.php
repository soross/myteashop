<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getListBySql("select id,comm_code from comm_code where comm_type='Logo'",$db);
$smarty->assign("info",$info[0]);

$smarty->display("logo.html");
?>
