<?php
require_once("../action/global_action.php");


$result = @mysql_query("select id from video");
$total = @mysql_num_rows($result);
pageft($total, 10);
if ($firstcount < 0) $firstcount = 0;
//ап╠М

$query = $db->query("select id,video_name,video_picture,video_desc,create_date from video order by create_date desc limit $firstcount, $displaypg");
$newsList = array();
while($row = $db->fetch_array($query)){
	$newsList[] = $row;
}

$smarty->assign("videoList",$newsList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("video/videolist.html");
?>
