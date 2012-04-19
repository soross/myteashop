<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$case=" where 1=1 ";
if(isset($_GET[staffname])&& !empty($_GET[staffname])){
	$case = $case." and s.staffname like '%".$_GET[staffname]."%'";
	$smarty->assign("staffname",$_GET[staffname]);
}
if(isset($_GET[staffid])&& !empty($_GET[staffid])){
	$case = $case." and s.staffid like '%".$_GET[staffid]."%'";
	$smarty->assign("staffid",$_GET[staffid]);
}
if(isset($_GET[prodid])&& !empty($_GET[prodid])){
	$case = $case." and p.prodid like '%".$_GET[prodid]."%'";
	$smarty->assign("prodid",$_GET[prodid]);
}
if(isset($_GET[prodname])&& !empty($_GET[prodname])){
	$case = $case." and p.picname like '%".$_GET[prodname]."%'";
	$smarty->assign("prodname",$_GET[prodname]);
}
if(isset($_GET[orderid])&& !empty($_GET[orderid])){
	$case = $case." and oi.orderid like '%".$_GET[orderid]."%'";
	$smarty->assign("orderid",$_GET[orderid]);
}
if(isset($_GET[y])&& !empty($_GET[y])){
	$case = $case." and sj.y_job='".$_GET[y]."'";
	$smarty->assign("y",$_GET[y]);
}
if(isset($_GET[m])&& !empty($_GET[m])){
	$case = $case." and sj.m_job='".$_GET[m]."'";
	$smarty->assign("m",$_GET[m]);
}
if(isset($_GET[jobid])&& !empty($_GET[jobid]) &&"-1"!=$_GET[jobid]){
	$case = $case." and sj.jobid = '".$_GET[jobid]."'";
	$smarty->assign("jobid",$_GET[jobid]);
}
if(isset($_GET[isover])&& !empty($_GET[isover])){
	$isover = $_GET[isover];
	if("-1"==$_GET[isover]){
		$isover= 0;
	}
	$case = $case." and sj.isfinish = '".$isover."'";
	$smarty->assign("isover",$isover);
}

$pagesize = 15;//一页显示多少条
//分页
$queryTotal = $db->query("SELECT sj.id FROM staffjob AS sj LEFT JOIN job AS j ON sj.jobid = j.id
LEFT JOIN prod AS p ON sj.prodid = p.id LEFT JOIN orderitem AS oi ON sj.orderid = oi.id
INNER JOIN staff AS s ON sj.staffid = s.id ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//未审核会员分类
$stafflist = getListBySql("SELECT sj.id,sj.amount,sj.m_job,sj.y_job,sj.isfinish,j.jobname,p.picname,
p.prodid,oi.orderid,s.staffid,s.staffname,sj.jobpriceid FROM staffjob AS sj
LEFT JOIN job AS j ON sj.jobid = j.id LEFT JOIN prod AS p ON sj.prodid = p.id
LEFT JOIN orderitem AS oi ON sj.orderid = oi.id LEFT JOIN staff AS s ON sj.staffid = s.id  ".$case.
" order by sj.id desc,s.staffname limit $firstcount, $displaypg",$db);

$smarty->assign("stafflist",$stafflist);


//显示分页的内容
$smarty->assign("page",$pagenav);

$joblist = getListBySql("select * from job",$db);
$smarty->assign("joblist",$joblist);

$smarty->display("staffjob.html");
?>
