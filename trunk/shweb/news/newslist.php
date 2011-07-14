<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");
require_once("../action/public_info.php");

$pagesize = 10;//一页显示多少条

//分页
$queryTotal = $db->query("select id from news");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select id,title,create_date from news order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rowR = $db->fetch_array($newsQuery)){
	$newsRow[] = $rowR;
}
$smarty->assign("newsList",$newsRow);


//显示分页的内容
$smarty->assign("page",$pagenav);

//当前位置
$address = "您当前位置：首 页 &gt; <font color='#FF3300'>新闻资讯</font>";
$smarty->assign("address",$address);

$smarty->display("news/newslist.html");
?>
