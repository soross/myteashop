<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from job");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$jobQuery = $db->query("select * from job order by id desc limit $firstcount, $displaypg");
$jobRow = array();
while($rowjob = $db->fetch_array($jobQuery)){
	$jobRow[] = $rowjob;
}
$smarty->assign("jobRow",$jobRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("joblist.html");
?>
