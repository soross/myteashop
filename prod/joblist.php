<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from job");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$jobQuery = $db->query("select * from job order by id desc limit $firstcount, $displaypg");
$jobRow = array();
while($rowjob = $db->fetch_array($jobQuery)){
	$jobRow[] = $rowjob;
}
$smarty->assign("jobRow",$jobRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("joblist.html");
?>
