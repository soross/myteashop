<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
//print_r($_SESSION['WEB_AAMS_USER_LOGIN_BEAN_SESSION']);

$smarty->display("main.html");
?>
