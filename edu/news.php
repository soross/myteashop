<?php
if(!isset($_GET[type])||empty($_GET[type])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/mysql.class.php");

	$type = getListBySql("select id,type_name,isnewslist,pid from type where id='".$_GET[type]."'",$db);
	if($type[0][isnewslist]==0){
		echo "<script>location.href='newsinfo.php?typeid=".$_GET[type]."';</script>";
		exit;
	}else{
		include_once("action/smarty_inc.php");
		include_once("action/public_info.php");

		$db->query("select id from type where pid='".$_GET[type]."'");
		$cnt = $db->db_num_rows();
		$newslist = null;
		if($cnt>0){
			$newslist=getListBySql("select * from type where pid='".$_GET[type]."'",$db);

		}else{
			require_once("action/page.class.php");
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

		}
		$smarty->assign("newslist",$newslist);
		$display="news.htm";
		$smarty->display($display);
	}
}
?>
