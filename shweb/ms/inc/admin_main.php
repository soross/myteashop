<?php
require_once("../action/global_action.php");

$query = $db->query("select * from comm_info where info_type='ContactUs'");
$row = $db->fetch_array($query);
$smarty->assign("buttomInfo",$row);

$queryCompany = $db->query("select id,remark from comm_info where info_type='Company'");
$rowCompany = $db->fetch_array($queryCompany);
$smarty->assign("companyInfo",$rowCompany);

$smarty->display("config/config.html");

?>
