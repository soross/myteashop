<?php
require_once("../action/global_action.php");

$query = $db->query("select id,info_value from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);

$smarty->display("service/imms.html");
?>
