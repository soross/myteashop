<?php
require_once("../action/global_action.php");

$query = $db->query("select id,cust_name from cust");
$custList = array();
while($row=$db->fetch_array($query)){
	$custList[]=$row;
}
$smarty->assign("custList",$custList);

$smarty->display("cust/custcaseadd.html");
?>
