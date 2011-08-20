<?php
require_once("../action/global_action.php");

$query = $db->query("select id,info_value from comm_info where info_type='ButtomInfo'");
$row = $db->fetch_array($query);
$smarty->assign("buttomInfo",$row);

$queryCompany = $db->query("select id,info_value from comm_info where info_type='CompanyInfo'");
$rowCompany = $db->fetch_array($queryCompany);
$smarty->assign("companyInfo",$rowCompany);


$queryIndexCompany = $db->query("select id,info_value from comm_info where info_type='AboutUs' and info_code='Text'");
$rowIndexCompany = $db->fetch_array($queryIndexCompany);
$smarty->assign("IndexCompanyInfo",$rowIndexCompany);

$smarty->display("config/config.html");

?>
