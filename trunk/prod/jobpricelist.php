<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from jobprice");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$jobpriceQuery = $db->query("select (select prodid from prod p where p.id = j.prodid) as prodid," .
		"(select jobname from job b where b.id = j.jobid) as jobname,j.id,j.jobprice,j.create_date " .
		"from jobprice j order by prodid,jobid desc limit $firstcount, $displaypg");
$jobpriceRow = array();
while($rowjobprice = $db->fetch_array($jobpriceQuery)){
	$jobpriceRow[] = $rowjobprice;
}
$smarty->assign("jobpriceRow",$jobpriceRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("jobpricelist.html");
?>
