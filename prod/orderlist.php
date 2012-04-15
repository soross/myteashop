<?php
require_once("action/checkAamsLogin.php");
require_once("action/checkOrderPassword.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 1;//一页显示多少条
//分页
$queryTotal = $db->query("select id from order");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$orderQuery = $db->query("select * from order order by pddate desc limit $firstcount, $displaypg");
$orderRow = array();
while($rowadmin = $db->fetch_array($orderQuery)){
	$orderRow[] = $roworder;
}
$smarty->assign("orderRow",$orderRow);

//未审核会员分类
$orderlistQuery = $db->query("select * from orderlist order by prodid desc limit $firstcount, $displaypg");
$orderlistRow = array();
while($roworderlist = $db->fetch_array($orderlistQuery)){
	$orderlistRow[] = $roworderlist;
}
$smarty->assign("orderlistRow",$orderlistRow);










//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("userlist.html");
?>
