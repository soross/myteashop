<?php
include_once ("action/smarty_inc.php");
include_once ("action/mysql.class.php");
include_once ("action/public_info.php");
include_once ("action/page.class.php");

$sonStyle = "235";
$type = 'NEWS';//type=NEWS
if (isset ($_GET[type]) && !empty ($_GET[type])) {
	if ('DOC' == $_GET[type]) {
		$sonStyle = "236";
		$type = 'DOC';
	}
}

$smarty->assign('nav_style', '197');
$smarty->assign('nav_son_style', $sonStyle);
$smarty->assign('newsType', $type);
//分页
$pagesize = 15;//一页显示多少条
$queryTotal = $db->query("select id from news where remark='$type'");
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);


$newsList = getList("news where remark='$type' order by create_date desc limit $firstcount, $displaypg", $db);
$smarty->assign('newsList', $newsList);


$smarty->display("news.htm");
?>
