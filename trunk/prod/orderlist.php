<?php
require_once("action/checkAamsLogin.php");
require_once("action/checkOrderPassword.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 1;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from order");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$orderQuery = $db->query("select * from order order by pddate desc limit $firstcount, $displaypg");
$orderRow = array();
while($rowadmin = $db->fetch_array($orderQuery)){
	$orderRow[] = $roworder;
}
$smarty->assign("orderRow",$orderRow);

//δ��˻�Ա����
$orderlistQuery = $db->query("select * from orderlist order by prodid desc limit $firstcount, $displaypg");
$orderlistRow = array();
while($roworderlist = $db->fetch_array($orderlistQuery)){
	$orderlistRow[] = $roworderlist;
}
$smarty->assign("orderlistRow",$orderlistRow);










//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("userlist.html");
?>
