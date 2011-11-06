<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");
//qq·þÎñ
$adQuery = $db->query("select * from lm_comm_code where type_name='LoginAdCode'");
$adRow = array();
while($rowad = $db->fetch_array($adQuery)){
	$adRow[] = $rowad;
}
$smarty->assign("ad",$adRow);
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/loginad.html");
?>