<?php
if(isset($_GET[newsid]) && !empty($_GET[newsid])){
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//相关新闻
$newsInfo = getObject("news where id ='$_GET[newsid]'",$db);
$smarty->assign('newsInfo',$newsInfo);

$smarty->assign('nav_style','197');
if($newsInfo[remark]=='NEWS'){
	$smarty->assign('nav_son_style','235');
}else{
	$smarty->assign('nav_son_style','236');
}

$smarty->display("newsinfo.htm");
}else{
		echo "<script>window.history.back(-1);</script>" ;
}
?>
