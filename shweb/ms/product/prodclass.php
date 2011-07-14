<?php
require_once("../action/global_action.php");

$query = $db->query("select * from prod_class");
$prodClassList = array();
while($row = $db->fetch_array($query)){
	$prodClassList[] = $row;
}
$smarty->assign("prodClassList",$prodClassList);
$smarty->display("product/prodclass.html");
?>
