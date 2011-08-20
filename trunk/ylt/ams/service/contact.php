<?php
require_once("../action/global_action.php");
$type=$_GET['type'];
if(empty($type)){
	$type = "ContactInfo";
}
$query = $db->query("select id,info_value from comm_info where info_type='".$type."'");
$row = $db->fetch_array($query);
$smarty->assign("contactInfoAll",$row);
$smarty->assign("type",$type);
$smarty->display("service/contact.html");
?>
