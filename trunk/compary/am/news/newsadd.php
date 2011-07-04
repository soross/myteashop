<?php
require_once("../action/global_action.php");

//新闻分类
$queryNewsClass = $db->query("select * from news_class");
$rowNC= array();
while($rowNewsClass = $db->fetch_array($queryNewsClass)){
	$rowNC[] = $rowNewsClass;
}
$smarty->assign("newsClassList",$rowNC);

$smarty->display("news/newsadd.html");
?>
