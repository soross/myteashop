<?php
require_once("../action/global_action.php");


$result = @mysql_query("select id from news");
$total = @mysql_num_rows($result);
pageft($total, 20);
if ($firstcount < 0) $firstcount = 0;
//ап╠М

$query = $db->query("select * from news order by create_date desc limit $firstcount, $displaypg");
$newsList = array();
while($row = $db->fetch_array($query)){
	$newsList[] = $row;
}

$smarty->assign("newsList",$newsList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("news/newslist.html");
?>
