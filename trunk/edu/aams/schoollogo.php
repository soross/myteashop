<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from comm_code where comm_type='School_Logo' ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

$info = getList(" comm_code where comm_type='School_Logo' order by id desc limit $firstcount, $displaypg" ,$db);
$smarty->assign("info",$info);
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("schoollogo.html");
?>
