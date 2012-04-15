<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");


//员工表
$staffQuery=$db->query("select * from staff order by staffid");
$staffRow=array();
while($rowstaff=$db->fetch_array($staffQuery)){
	$staffRow[]=$rowstaff;
}
$smarty->assign("staffRow",$staffRow);

//工种价格表
$jobpriceQuery=$db->query("select * from jobprice order by prodid");
$jobpriceRow=array();
while($rowjobprice=$db->fetch_array($jobpriceQuery)){
	$jobpriceRow[]=$rowjobprice;
}
$smarty->assign("jobpriceRow",$jobpriceRow);

$smarty->display("addstaffjob.html");
?>
