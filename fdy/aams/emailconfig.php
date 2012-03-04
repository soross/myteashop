<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getList("comm_code where comm_type='SupportEmail'",$db);
$smarty->assign("imList",$list);

$smarty->display("emailconfig.html");
?>
