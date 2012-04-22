<?php
if(!isset($_GET[type])||empty($_GET[type])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");
	require_once("action/page.class.php");

	$db->query("select * from type where pid='$_GET[type]'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		$type = getListBySql("select type_name from type where id='".$_GET[type]."'",$db);
		$smarty->assign('addressNav','<a href="index.php">首页</a>&nbsp;-&gt;&nbsp;'.$type[0][type_name]);

		$newslist = getListBySql("select * from type where pid='".$_GET[type]."' order by remark",$db);
		$smarty->assign("newslist",$newslist);

		$display="news.htm";
	}else{
		//获取类型
		$case = 'where type_id='.$_GET[type];

		$pagesize = 20;//一页显示多少条
		//分页
		$queryTotal = $db->query("select id from news ".$case);
		$total = $db->db_num_rows($queryTotal);
		pageft($total, $pagesize);
		if ($firstcount < 0) $firstcount = 0;

		//显示分页的内容
		$smarty->assign("page",$pagenav);

		$newslist = getListBySql("select id,title,DATE_FORMAT(create_date,'%Y-%m-%d') as create_date,click from news ".$case." order by create_date desc limit $firstcount, $displaypg ",$db);
		$smarty->assign("newslist",$newslist);

		$display="newslist.htm";
	}
	//$smarty->assign("err",$cnt."#".$display);
	$smarty->display($display);
}
?>
