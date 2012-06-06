<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once('action/mysql.class.php');

$power = getListBySql("select * from boya_admin_menu where pid='-1' order by seq",$db);
$smarty->assign("power",$power);

$smarty->display("addpower.html");
?>
