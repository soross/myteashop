<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from cc");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$ccQuery = $db->query("select * from customer order by custid desc limit $firstcount, $displaypg");
$ccRow = array();
while($rowcc = $db->fetch_array($ccQuery)){
	$ccRow[] = $rowcc;
}
$smarty->assign("ccRow",$ccRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("cclist.html");
?>
