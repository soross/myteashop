<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");

//δ��˻�Ա����
$authQuery = $db->query("select * from lm_member where state ='3' or (mb_type='2' and state ='4')");
$authRow = array();
while($rowauth = $db->fetch_array($authQuery)){
	$authRow[] = $rowauth;
}
$smarty->assign("authRow",$authRow);

$smarty->display("aams/authdl.html");
?>
