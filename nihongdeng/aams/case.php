<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 8;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from obj_case");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//��Ʒ�б�
$caseQuery = $db->query("select * from obj_case order by create_date desc limit $firstcount, $displaypg");
$caseRow = array();
while($rowcase = $db->fetch_array($caseQuery)){
	$caseRow[] = $rowcase;
}
$smarty->assign("caseRow",$caseRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("case.html");
?>
