<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once('action/mysql.class.php');

$type = getListBySql("select * from boya_type where pid='2' order by seq",$db);
$smarty->assign("type",$type);
$smarty->display("addclass.html");
?>
