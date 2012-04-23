<?php
if(!isset($_GET[type])||empty($_GET[type])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/mysql.class.php");

	$type = $db->query("select id from type where pid=".$_GET[type],$db);
	$cnt = $db->db_num_rows();
	print_r($cnt);
	if($cnt<1){
		echo "<script>location.href='newsinfo.php?newsid=".$_GET[type]."';</script>";
		exit;
	}else{
		include_once("action/smarty_inc.php");
		include_once("action/public_info.php");
		require_once("action/page.class.php");
		$ptype = getListBySql("select id,type_name,pid from type where id=(select pid from type where id='".$_GET[type]."')",$db);
		$smarty->assign('addressNav','<a href="index.php">首页</a>&nbsp;-&gt;&nbsp;<a href="news.php?type='.$ptype[0][id].'">'.$ptype[0][type_name].'</a>');

		//获取类型
		$newslist = getListBySql("select * from type where pid='".$_GET[type]."' order by remark ",$db);
		$smarty->assign("newslist",$newslist);
		$smarty->display("news.htm");
	}
}
?>
