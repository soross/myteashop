<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");


if($_GET[key] && ""!=$_GET[key] && !empty($_GET[key])){

	//搜索不缓存
	$smarty->clear_cache('search/search.html'); //清除index.tpl的缓存

	require_once("../action/public_info.php");
	require_once("../action/public_info_contact.php");

	$key = explode(' ',$_GET[key]);
	$sql = "select * from weball where title like '%$key[0]%' or keyword like '%$key[0]%' ";
	for ($i = 1; $i < sizeof($key); $i++) {
		$sql =$sql." or title like '%$key[$i]%' or keyword like '%$key[$i]%' ";
	}

	$query = $db->query($sql);
	$searchRow = array();
	while($row = $db->fetch_array($query)){
		for ($i = 0; $i < sizeof($key); $i++) {
			//title <span class='keyword'></span>
			$row[title] =  preg_replace("/$key[$i]/i","<span  class='keyword'>$key[$i]</span>",$row[title]);
			//keyword <span  class='bodykeyword'></span>
			$row[keyword] =  preg_replace("/$key[$i]/i","<span class='bodykeyword'>$key[$i]</span>",$row[keyword]);

			$row[cnt] = $row[cnt]+substr_count($row[title],$key[$i]);
       		$row[cnt] = $row[cnt]+substr_count($row[keyword],$key[$i]);
		}

		$row[keyword] = $db->subShowContent($key,$row[keyword],"<span class='bodykeyword'>","</span>");
		$searchRow[] = $row;
	}
	$smarty->assign("searchList",$searchRow);

	//标题
	$smarty->assign("title","全站搜索-果果网络(Www.GuoguoNet.com)");
	$smarty->assign("keywords","全站搜索 果果网络 软件 软件开发 网站 网站建设 整站建设");
	$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");

	//当前位置
	$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 全站搜索";
	$smarty->assign("address",$address);

	$smarty->display("search/search.html");
}else{
	echo "<script>history.back();</script>";
}
?>


