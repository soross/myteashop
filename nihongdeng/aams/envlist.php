<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 5;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from cp where remark='DeviceContext' and seq is null ");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//��Ʒ�б�
$cpQuery = $db->query("select * from cp where remark='DeviceContext' and seq is null order by create_date desc limit $firstcount, $displaypg");
$cpRow = array();
while($rowcp = $db->fetch_array($cpQuery)){
	$cpRow[] = $rowcp;
}
$smarty->assign("cpRows",$cpRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("envlist.html");
?>
