<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from orderitem where ccdate is not null");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$ccQuery = $db->query("select oi.*,s.staffname,s.staffid from orderitem as oi left join staff as s on oi.staffid=s.id " .
		"where ccdate is not null order by ccdate desc  limit $firstcount, $displaypg");
$ccRow = array();
while($rowcc = $db->fetch_array($ccQuery)){
	$ccRow[] = $rowcc;
}
$smarty->assign("ccRow",$ccRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("cclist.html");
?>
