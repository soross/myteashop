<?php
require_once("../action/global_action.php");


$result = @mysql_query("select id from news");
$total = @mysql_num_rows($result);
pageft($total, 20);
if ($firstcount < 0) $firstcount = 0;
//�б�

$query = $db->query("select a.class_name,b.* from news_class a,news b where a.id =b.news_class order by b.create_date desc limit $firstcount, $displaypg");
$newsList = array();
while($row = $db->fetch_array($query)){
	$newsList[] = $row;
}

$smarty->assign("newsList",$newsList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("news/newslist.html");
?>
