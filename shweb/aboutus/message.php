<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

//当前位置
$address = "您现在的位置：首 页 &gt; <font color='#FF3300'>信息反馈</font>";
$smarty->assign("address",$address);

$smarty->display("aboutus/message.html");
?>
