<?php
require_once("../action/global_action.php");

$result = @mysql_query("select id from succ_case");
$total = @mysql_num_rows($result);
pageft($total, 10);
if ($firstcount < 0) $firstcount = 0;

//ап╠М
$query = $db->query("select * from succ_case order by create_date desc limit $firstcount, $displaypg");
$caseList = array();
while($row = $db->fetch_array($query)){
	/*
	$pathQuery = $db->query("select * from succ_case_path where case_id='".$row[id]."' order by create_date desc");
	$casePathList = array();
	while($pathRow = $db->fetch_array($pathQuery)){
		$casePathList[] = $pathRow;
	}
	$row['pathList'] = $casePathList;
	*/
	$caseList[] = $row;
}

$smarty->assign("caseList",$caseList);

$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("case/caselist.html");
?>
