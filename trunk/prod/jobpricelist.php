<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from jobprice");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$jobpriceQuery = $db->query("select (select prodid from prod p where p.id = j.prodid) as prodid," .
		"(select jobname from job b where b.id = j.jobid) as jobname,j.id,j.jobprice,j.create_date " .
		"from jobprice j order by prodid,jobid desc limit $firstcount, $displaypg");
$jobpriceRow = array();
while($rowjobprice = $db->fetch_array($jobpriceQuery)){
	$jobpriceRow[] = $rowjobprice;
}
$smarty->assign("jobpriceRow",$jobpriceRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("jobpricelist.html");
?>
