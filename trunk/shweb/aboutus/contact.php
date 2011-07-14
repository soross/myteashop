<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");


//联系信息
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("contactInfo",$rowButtom);

//当前位置
$address = "您当前位置：首 页 &gt; <font color='#FF3300'>联系我们</font>";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");
?>
