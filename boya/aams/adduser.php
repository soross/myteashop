<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once('action/mysql.class.php');

$powerlist = getListBySql("select * from boya_admin_menu order by seq",$db);
$smarty->assign("powerlist",$powerlist);


$smarty->display("adduser.html");
?>
