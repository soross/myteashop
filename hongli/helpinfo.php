<?php
if(!isset($_GET[helpid])||empty($_GET[helpid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	require_once("action/smarty_index.php");
	require_once("action/mysql.class.php");
	require_once("action/public_info.php");
	$smarty->assign("HELP_LI","class='beijingwu'");
	$smarty->assign("HELP_A"," flwindex_menu_zhuyao_sekuai");
	$smarty->assign("HELP_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');

	//新闻详细资料
	$newsQuery = $db->query("select * from lm_news where id='".$_GET[helpid]."'");
	$newsInfo = $db->fetch_array($newsQuery);
	$smarty->assign("newsInfo",$newsInfo);


}
$smarty->display("helpinfo.html");
?>
