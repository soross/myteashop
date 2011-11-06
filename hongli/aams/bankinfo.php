<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");
$query = $db->query("select * from lm_comm_code where type_name='BankInfo'");
$info = $db->fetch_array($query);
$smarty->assign("BankInfo",$info);

$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/bankinfo.html");
?>
