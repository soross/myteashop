<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select * from yz");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$yzQuery = $db->query("select * from yz order by id desc limit $firstcount, $displaypg");
$yzRow = array();
while($rowyz = $db->fetch_array($yzQuery)){
	$yzRow[] = $rowyz;
}
$smarty->assign("yzRow",$yzRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("yzlist.html");
?>
