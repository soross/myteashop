<?php
if(!isset($_GET[newsid])||empty($_GET[newsid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	require_once("action/smarty_index.php");
	require_once("action/mysql.class.php");
	require_once("action/public_info.php");
	$smarty->assign("NEWS_LI","class='beijingwu'");
	$smarty->assign("NEWS_A"," flwindex_menu_zhuyao_sekuai");
	$smarty->assign("NEWS_A_CSS",'style="color: rgb(0, 0, 0); font-family: ����;"');


	//������ϸ����
	$newsQuery = $db->query("select * from lm_news where id='".$_GET[newsid]."'");
	$newsInfo = $db->fetch_array($newsQuery);
	$smarty->assign("newsInfo",$newsInfo);

	//����ʾ���˶�̬�����˹���
	$smarty->assign("showNewsList","none");

	$smarty->display("newsinfo.html");
}
?>
