<?php
if((isset($_GET[newsid])&& !empty($_GET[newsid]))||(isset($_GET[type])&& !empty($_GET[type]))){
	include_once("action/smarty_inc.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//更新点击数
	$db->query("update news set click=click+1 where id='".$_GET[newsid]."' or type_id='".$_GET[type]."'" );

	//查询信息
	$newsInfo = getListBySql("select title,DATE_FORMAT(create_date,'%Y-%m-%d') as create_date,content,click,filepath,filename from news where id='".$_GET[newsid]."' or type_id='".$_GET[type]."'",$db);
	$smarty->assign("newsInfo",$newsInfo[0]);

	$type = getListBySql("select id,type_name from type where id=(select type_id from news where id='".$_GET[newsid]."' or type_id='".$_GET[type]."')",$db);
	$smarty->assign('addressNav','<a href="index.php">首页</a>&nbsp;-&gt;&nbsp;<a href="news.php?type='.$type[0][id].'">'.$type[0][type_name].'</a>&nbsp;-&gt;&nbsp;'.$newsInfo[0][title]);

	$smarty->display("newsinfo.htm");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
