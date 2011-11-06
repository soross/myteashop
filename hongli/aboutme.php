<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/public_info.php");
$smarty->assign("HELP_LI","class='beijingwu'");
$smarty->assign("HELP_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("HELP_A_CSS",'style="color: rgb(0, 0, 0); font-family: ËÎÌå;"');


//²»ÏÔÊ¾¼ò½é
$smarty->assign("showAboutMe","none");


$smarty->display("aboutme.html");
?>
