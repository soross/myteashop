<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 50;//一页显示多少条
//分页
$queryTotal = $db->query("select id from boya_admin_menu");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$adminQuery = $db->query("select * from boya_admin_menu order by seq limit $firstcount, $displaypg");
$adminRow = array();
while($rowadmin = $db->fetch_array($adminQuery)){
	$adminRow[] = $rowadmin;
}
$smarty->assign("adminRow",$adminRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("powerlist.html");
?>
