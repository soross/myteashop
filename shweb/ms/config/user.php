<?php
require_once("../action/global_action.php");
//ап╠М
$query = $db->query("select * from am");
$list = array();
while($row = $db->fetch_array($query)){
	$list[] = $row;
}
$smarty->assign("userList",$list);
$smarty->display("config/user.html");
?>
