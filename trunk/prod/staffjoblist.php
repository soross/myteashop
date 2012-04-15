<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from staffjob");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$staffjobQuery = $db->query("select x.id id,x.staffid staffid,x.staffname staffname,x.jobpriceid jobpriceid,x.amount amount,x.unit unit,x.m_job m_job,x.y_job y_job,x.create_date create_date,t.jobname jobname,t.prodid prodid,t.jobprice jobprice
 from (select s.id id,s.staffid staffid,staffname staffname,s.jobpriceid jobpriceid,s.amount amount,s.unit unit,s.m_job m_job,s.y_job y_job,s.create_date create_date from  staffjob s left join  staff on s.staffid=staff.staffid)x
left join  (select jp.id,jobprice,jp.jobid jid,jobname,prodid from jobprice jp,job j where jp.jobid=j.id)t
on x.jobpriceid=t.id order by y_job,m_job desc limit $firstcount, $displaypg");
$staffjobRow = array();
while($rowstaffjob = $db->fetch_array($staffjobQuery)){
	$staffjobRow[] = $rowstaffjob;
}
$smarty->assign("staffjobRow",$staffjobRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("staffjoblist.html");
?>
