<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 12;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from cp where remark='DeviceContext' and seq is null");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//��������
$ryzzQuery = $db->query("select id,cp_info_type_en,cp_info_type_zh_cn,create_date from cp where remark='DeviceContext' and seq is null order by create_date desc limit $firstcount, $displaypg");
$ryzzRow = array();
while($rowprod = $db->fetch_array($ryzzQuery)){
	$ryzzRow[] = $rowprod;
}
$smarty->assign("ryzzRow",$ryzzRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("envlist.html");
?>
