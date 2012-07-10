<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$xcbm = getListBySql("select * from boya_config where comm_type ='XCBM'" ,$db);
$smarty->assign("xcbm",$xcbm[0]);

$smarty->display("addzxbm.html");
?>
