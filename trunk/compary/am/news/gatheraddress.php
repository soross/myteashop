<?php
require_once("../action/global_action.php");

$query = $db->query("select id,info_value,remark from comm_info where info_type='GatherAddress'");
$gatherAddress = array();
while($row= $db->fetch_array($query)){
	$gatherAddress[]=$row;
}
$smarty->assign("gatherAddressList",$gatherAddress);

$smarty->display("news/gatheraddress.html");
?>

