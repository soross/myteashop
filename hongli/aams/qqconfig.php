<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");
//qq·þÎñ
$qqQuery = $db->query("select * from lm_comm_code where type_name='QQService'");
$qqRow = array();
while($rowqq = $db->fetch_array($qqQuery)){
	$qqRow[] = $rowqq;
}
$smarty->assign("qq",$qqRow);
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/qqconfig.html");
?>