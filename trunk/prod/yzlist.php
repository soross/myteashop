<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$case=" where 1=1 ";
if(isset($_GET[staffid])&& !empty($_GET[staffid])){
	$case = $case." and s.staffid LIKE '%".$_GET[staffid]."%' ";
	$smarty->assign("staffid",$_GET[staffid]);
}
if(isset($_GET[staffname])&& !empty($_GET[staffname])){
	$case = $case." and s.staffname LIKE '%".$_GET[staffname]."%' ";
	$smarty->assign("staffname",$_GET[staffname]);
}
if(isset($_GET[year])&& !empty($_GET[year])){
	$case = $case." and y_yz = '".$_GET[year]."' ";
	$smarty->assign("year",$_GET[year]);
}
if(isset($_GET[month])&& !empty($_GET[month])){
	if(strlen($_GET[month])<2) {
		$m = "0".$_GET[month];
	}else{
		$m = $_GET[month];
	}
	$case = $case." and m_yz = '".$m."' ";
	$smarty->assign("month",$_GET[month]);
}


$pagesize = 10;//一页显示多少条
//分页
$pagesql="SELECT yz.id FROM yz LEFT JOIN staff AS s ON yz.staffid = s.id ";
$queryTotal = $db->query($pagesql.$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//预支
$sql="SELECT
yz.id,
yz.money,
yz.m_yz,
yz.y_yz,
yz.create_date,
s.staffid,
s.staffname
FROM
yz
LEFT JOIN staff AS s ON yz.staffid = s.id
".$case."
order by yz.create_date desc limit $firstcount, $displaypg ";
//print_r($sql);
$yzQuery = $db->query($sql);
$yzRow = array();
while($rowyz = $db->fetch_array($yzQuery)){
	$yzRow[] = $rowyz;
}
$smarty->assign("yzRow",$yzRow);

//显示分页的内容
$smarty->assign("page",$pagenav);




$smarty->display("yzlist.html");
?>
