<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getList(" cert" ,$db);
$smarty->assign("info",$info);


$smarty->display("cert.html");
?>
