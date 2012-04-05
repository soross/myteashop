<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getList(" comm_code a,comm_code b where a.id=b.fkid and a.comm_code='About'" ,$db,"a.id as fkid,a.comm_value as info,b.comm_type,b.comm_value as descinfo,b.id");
$smarty->assign("aboutList",$list);

$smarty->display("aboutme.html");
?>
