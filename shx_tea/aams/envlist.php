<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 8;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from comm_code where type_name='Environment' and isshow='0'");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�Ʋ軷��
$ryzzQuery = $db->query("select * from comm_code where type_name='Environment' and isshow='0' order by id desc limit $firstcount, $displaypg");
$ryzzRow = array();
while($rowprod = $db->fetch_array($ryzzQuery)){
	$ryzzRow[] = $rowprod;
}
$smarty->assign("ryzzRow",$ryzzRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("envlist.html");
?>
