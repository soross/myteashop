<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
$query = $db->query("select content from lm_comm_code where type_name='ButtomNav'");
$info = $db->fetch_array($query);
$smarty->assign("ButtomNav",html_entity_decode($info[content]));

$query = $db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$info = $db->fetch_array($query);
$smarty->assign("ButtomCopyInfo",html_entity_decode($info[content]));
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/config.html");
?>
