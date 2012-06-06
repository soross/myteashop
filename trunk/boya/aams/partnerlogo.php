<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$logoList = getList(" comm_code where comm_type='PartnerLogo'" ,$db);
$smarty->assign("logoList",$logoList);

$smarty->display("partnerlogo.html");
?>
