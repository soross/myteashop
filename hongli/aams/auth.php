<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");

//未审核会员分类
$authQuery = $db->query("select * from lm_member where state='2'");
$authRow = array();
while($rowauth = $db->fetch_array($authQuery)){
	$authRow[] = $rowauth;
}
$smarty->assign("authRow",$authRow);

$smarty->display("aams/auth.html");
?>
