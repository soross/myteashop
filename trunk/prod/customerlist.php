<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from customer");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$customerQuery = $db->query("select * from customer order by custid desc limit $firstcount, $displaypg");
$customerRow = array();
while($rowadmin = $db->fetch_array($customerQuery)){
	$customerRow[] = $rowadmin;
}
$smarty->assign("customerRow",$customerRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("customerlist.html");
?>
