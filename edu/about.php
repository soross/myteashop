<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


$smarty->assign('addressNav','<a href="index.php">��ҳ</a>&nbsp;-&gt;&nbsp;�������');

$info = getListBySql("select comm_value from comm_code where comm_type='Menu' and comm_code='about.php'",$db);
$newsInfo = array();
$newsInfo['title']="�������";
$newsInfo['content'] = $info[0][comm_value];
$newsInfo['click'] = '0';
$newsInfo['create_date']='2012-04-05';
$smarty->assign("newsInfo",$newsInfo);


$smarty->display("newsinfo.htm");
?>
