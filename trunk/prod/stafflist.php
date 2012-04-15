<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from staff");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$staffQuery = $db->query("select * from staff order by id desc limit $firstcount, $displaypg");
$staffRow = array();
while($rowstaff = $db->fetch_array($staffQuery)){
	$staffRow[] = $rowstaff;
}
$smarty->assign("staffRow",$staffRow);

//print_r($staffRow);

$gwQuery = $db->query("select * from gw order by gwid");
$gwRow = array();
while($rowgw = $db->fetch_array($gwQuery)){
	$gwRow[] = $rowgw;
}
$smarty->assign("gwRow",$gwRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("stafflist.html");
?>
