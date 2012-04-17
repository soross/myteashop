<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$case=" where 1=1 ";
if(isset($_GET[key])&& !empty($_GET[key])){
	$case = $case." and p.prodid like '%".$_GET[key]."%'";
	$smarty->assign("key",$_GET[key]);
}
if(isset($_GET[jobid])&& !empty($_GET[jobid]) &&"-1"!=$_GET[jobid]){
	$case = $case." and j.id = '".$_GET[jobid]."'";
	$smarty->assign("jobid",$_GET[jobid]);
}


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("SELECT jp.id FROM jobprice AS jp LEFT JOIN prod AS p ON jp.prodid = p.id
	LEFT JOIN job AS j ON jp.jobid = j.id ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$jobpriceQuery = $db->query("SELECT
j.jobname,
p.prodid,
jp.jobprice,
jp.id,
jp.create_date
FROM
jobprice AS jp
LEFT JOIN prod AS p ON jp.prodid = p.id
LEFT JOIN job AS j ON jp.jobid = j.id ".$case.
" order by prodid,jobid desc limit $firstcount, $displaypg");

$jobpriceRow = array();
while($rowjobprice = $db->fetch_array($jobpriceQuery)){
	$jobpriceRow[] = $rowjobprice;
}
$smarty->assign("jobpriceRow",$jobpriceRow);


$joblist = getListBySql("select * from job",$db);
$smarty->assign("joblist",$joblist);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("jobpricelist.html");
?>
