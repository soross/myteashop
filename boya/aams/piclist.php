<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 15;//一页显示多少条
//分页
$queryTotal = $db->query("select id from boya_news");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

$logoList = getList(" boya_news order by create_date limit $firstcount, $displaypg" ,$db);
$smarty->assign("logoList",$logoList);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("piclist.html");
?>
