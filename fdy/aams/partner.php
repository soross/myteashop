<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getObject(" `comm_code` a,`comm_code` b where a.id=b.fkid and a.comm_code='Partner'" ,$db,"a.comm_value as info,b.comm_value as descinfo,b.comm_type,b.id");
$smarty->assign("info",$info);


$smarty->display("partner.html");
?>