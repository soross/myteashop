<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

//简介信息
$query = $db->query("select remark from comm_info where info_type='Company'");
$row = $db->fetch_array($query);
$smarty->assign("CompanyInfo",$row);

//当前位置
$address = "您当前位置：首 页 &gt; <font color='#FF3300'>公司简介</font>";
$smarty->assign("address",$address);
$smarty->display("aboutus/company.html");
?>
