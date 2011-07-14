<?php
require_once("../action/global_action.php");

$query = $db->query("select * from banner");
$bannerList = array();
while($row = $db->fetch_array($query)){
	$bannerList[] = $row;
}
$smarty->assign("bannerList",$bannerList);

$smarty->display("config/banner.html");
?>
