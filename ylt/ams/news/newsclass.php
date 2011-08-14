<?php
require_once("../action/global_action.php");

$query = $db->query("select * from news_class");
$classList = array();
while($row = $db->fetch_array($query)){
	$classList[] = $row;
}
$smarty->assign("newsClassList",$classList);

$smarty->display("news/newsclass.html");
?>
