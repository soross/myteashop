<?php
require_once("../action/global_action.php");

$query = $db->query('select id,link_name,link_url,create_date from link');
$linkList = array();
while($row = $db->fetch_array($query)){
	$linkList[] = $row;
}
$smarty->assign("linkList",$linkList);

$smarty->display("config/link.html");
?>
