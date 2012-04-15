<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$gwlist = getListBySql("select * from gw order by gwname",$db);
$smarty->assign("gwlist",$gwlist);

$smarty->display("addstaff.html");
?>
