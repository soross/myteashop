<?php
require_once("../action/global_action.php");

$result = @mysql_query("select id from cust_case");
$total = @mysql_num_rows($result);
pageft($total, 10);
if ($firstcount < 0) $firstcount = 0;
//ап╠М

$query = $db->query("select a.cust_name,a.compary,b.* from cust a,cust_case b where a.id =b.cust_id order by b.cust_id,b.create_date desc limit $firstcount, $displaypg");
$caseList = array();
while($row = $db->fetch_array($query)){
	$caseList[] = $row;
}

$smarty->assign("caseList",$caseList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("cust/custcaselist.html");
?>
