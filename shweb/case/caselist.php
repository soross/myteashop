<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");
require_once("../action/public_info.php");

$pagesize = 10;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("SELECT id FROM succ_case");
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�ɹ������б�
$caseQuery = $db->query("select * from succ_case order by create_date desc limit $firstcount, $displaypg ");
$caseList = array();
while($row = $db->fetch_array($caseQuery)){
	$caseList[] = $row;
}
$smarty->assign("caseList",$caseList);


//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; <font color='#FF3300'>�ɹ�����</font>";
$smarty->assign("address",$address);

$smarty->display("case/caselist.html");
?>
