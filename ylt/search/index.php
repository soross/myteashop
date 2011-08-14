<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");


if($_GET[key] && ""!=$_GET[key] && !empty($_GET[key])){

	//搜索不缓存
	$smarty->clear_cache('search/search.html'); //清除index.tpl的缓存

	require_once("../action/public_info.php");
	require_once("../action/public_info_contact.php");

	$searchRow = array();

	//新闻
	$key = explode(' ',$_GET[key]);
	$sql = "select news_info_url,title,content,author,create_date,id from news where 1<>1 ";
	for ($i = 0; $i < sizeof($key); $i++) {
		$sql =$sql." or title like '%$key[$i]%' or author like '%$key[0]%' or content like '%$key[$i]%' ";
	}

	$query = $db->query($sql);
	while($row = $db->fetch_array($query)){
		for ($i = 0; $i < sizeof($key); $i++) {
			$row[title] =  preg_replace("/$key[$i]/i","<span  class='keyword'>$key[$i]</span>",$row[title]);
			$row[content] =  preg_replace("/$key[$i]/i","<span class='bodykeyword'>$key[$i]</span>",$row[content]);

			$row[cnt] = $row[cnt]+substr_count($row[title],$key[$i]);
       		$row[cnt] = $row[cnt]+substr_count($row[content],$key[$i]);
		}

		$row[content] = $db->subShowContent($key,$row[content],"<span class='bodykeyword'>","</span>");
		$searchRow[] = $row;
	}
	$smarty->assign("searchList",$searchRow);

	$searchRowProd = array();

	$sql_prod = "select prod_info_url,prod_name,prod_code,prod_desc,create_date,id from prod where 1<>1 ";
	for ($i = 0; $i < sizeof($key); $i++) {
		$sql_prod =$sql_prod." or prod_name like '%$key[$i]%' or prod_code like '%$key[0]%' or prod_desc like '%$key[$i]%' ";
	}
	$query_prod = $db->query($sql_prod);
	while($row_prod = $db->fetch_array($query_prod)){
		for ($i = 0; $i < sizeof($key); $i++) {
			$row_prod[prod_name] =  preg_replace("/$key[$i]/i","<span  class='keyword'>$key[$i]</span>",$row_prod[prod_name]);
			$row_prod[prod_desc] =  preg_replace("/$key[$i]/i","<span class='bodykeyword'>$key[$i]</span>",$row_prod[prod_desc]);

			$row_prod[cnt] = $row_prod[cnt]+substr_count($row[prod_name],$key[$i]);
       		$row_prod[cnt] = $row_prod[cnt]+substr_count($row[prod_desc],$key[$i]);
		}

		$row_prod[prod_desc] = $db->subShowContent($key,$row_prod[prod_desc],"<span class='bodykeyword'>","</span>");
		$searchRowProd[] = $row_prod;
	}
	$smarty->assign("searchListProd",$searchRowProd);



	//标题
	$smarty->assign("title","全站搜索|".$SeoTitle);
	$smarty->assign("keywords","全站搜索|".$SeoKeywords);
	$smarty->assign("description","全站搜索|".$SeoDesc);


	//当前位置
	$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 全站搜索";
	$smarty->assign("address",$address);

	$smarty->display("search/search.html");
}else{
	echo "<script>history.back();</script>";
}
?>


