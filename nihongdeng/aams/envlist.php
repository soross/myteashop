<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 5;//一页显示多少条
//分页
$queryTotal = $db->query("select id from cp where remark='DeviceContext' and seq is null ");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//产品列表
$cpQuery = $db->query("select * from cp where remark='DeviceContext' and seq is null order by create_date desc limit $firstcount, $displaypg");
$cpRow = array();
while($rowcp = $db->fetch_array($cpQuery)){
	$cpRow[] = $rowcp;
}
$smarty->assign("cpRows",$cpRow);

//显示分页的内容
$smarty->assign("page",$pagenav);


$smarty->display("envlist.html");
?>
