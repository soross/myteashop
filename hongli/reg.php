<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",html_entity_decode($buttomInfo[content]));


$navQuery=$db->query("select content from lm_comm_code where type_name='ButtomNav'");
$navInfo = $db->fetch_array($navQuery);
$smarty->assign("buttomNavInfo",html_entity_decode($navInfo[content]));

if(isset($_GET[action])&&"yes"==$_GET[action]){
	$smarty->assign("checked","checked='checked'");
}else{
	$smarty->assign("checked","");
}

$smarty->display("reg.html");
?>
