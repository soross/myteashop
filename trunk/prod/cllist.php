<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from cl");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$ccQuery = $db->query("select * from cl order by id desc limit $firstcount, $displaypg");
$clRow = array();
while($rowcl = $db->fetch_array($ccQuery)){
	$clRow[] = $rowcl;
}
$smarty->assign("clRow",$clRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);
$smarty->assign("cpag",$page);
$smarty->display("cllist.html");
?>
