<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from comm_code where comm_type='School_Logo' ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

$info = getList(" comm_code where comm_type='School_Logo' order by id desc limit $firstcount, $displaypg" ,$db);
$smarty->assign("info",$info);
//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("schoollogo.html");
?>
