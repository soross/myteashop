<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 15;//一页显示多少条
//分页
$queryTotal = $db->query("select id from job");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//工作列表
$jobQuery = $db->query("select id,job_name,job_type,work_exp,college,job_cnt,create_date from job order by create_date desc limit $firstcount, $displaypg");
$jobRow = array();
while($rowjob = $db->fetch_array($jobQuery)){
	$jobRow[] = $rowjob;
}
$smarty->assign("jobRow",$jobRow);

//显示分页的内容
$smarty->assign("page",$pagenav);


$smarty->display("job.html");
?>
