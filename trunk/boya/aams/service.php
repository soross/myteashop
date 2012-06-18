<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getList("boya_config where comm_type='Im_Account'",$db);
$smarty->assign("imList",$list);

$smarty->display("service.html");
?>
