<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select gwid from gw");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$gwQuery = $db->query("select * from gw order by gwid desc limit $firstcount, $displaypg");
$gwRow = array();
while($rowgw = $db->fetch_array($gwQuery)){
	$gwRow[] = $rowgw;
}
$smarty->assign("gwRow",$gwRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("gwlist.html");
?>
