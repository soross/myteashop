<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 50;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from boya_admin_menu");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$adminQuery = $db->query("select * from boya_admin_menu order by seq limit $firstcount, $displaypg");
$adminRow = array();
while($rowadmin = $db->fetch_array($adminQuery)){
	$adminRow[] = $rowadmin;
}
$smarty->assign("adminRow",$adminRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("powerlist.html");
?>