<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getListBySql("select comm_value from comm_code where comm_type='Menu' and comm_code='about.php'" ,$db);
$smarty->assign("aboutInfo",$list[0][comm_value]);

$smarty->display("aboutme.html");
?>
