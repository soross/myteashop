<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 15;//一页显示多少条
//分页
$queryTotal = $db->query("select id from news");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select n.*,DATE_FORMAT(n.create_date,'%Y-%m-%d') as create_dates from news n order by n.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("newsRow",$newsRow);


$menuQuery = $db->query("select id,name from menu");
$menuList = array();
while($rowmenu = $db->fetch_array($menuQuery)){
	$menuList[] = $rowmenu;
}
$smarty->assign("menuList",$menuList);


//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("news.html");
?>
