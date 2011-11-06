<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/addaamsuser.html");
?>
