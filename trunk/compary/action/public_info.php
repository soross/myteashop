<?php
//新闻滚动
$newListQuery = $db->query("select id,title,news_info_url from news order by create_date desc limit 0,5");
$newsListStr = "&nbsp;&nbsp;&nbsp;&nbsp;";
while($rowNewsList = $db->fetch_array($newListQuery)){

	$newsListStr .=  "<A href='../news/".$rowNewsList[news_info_url]."' target='_blank' title='".$rowNewsList[title]."'>".$db->cn_substr($rowNewsList[title],0,29)."</A>&nbsp;&nbsp;&nbsp;&nbsp;";
}
$smarty->assign("newsListStr",$newsListStr);

//脚注信息
$queryButtomInfo = $db->query("select * from comm_info where info_type='ButtomInfo'");
$rowButtomInfo = $db->fetch_array($queryButtomInfo);
$smarty->assign("buttomInfo",$rowButtomInfo[info_value]);


$querySeoInfo = $db->query("select info_value,info_code from comm_info where info_type='SeoInfo'");
while ($rowSeoInfo = $db->fetch_array($querySeoInfo)) {
	if("Keywords"==$rowSeoInfo[info_code]){
		$SeoKeywords = $rowSeoInfo[info_value];
	}else if("Title"==$rowSeoInfo[info_code]){
		$SeoTitle = $rowSeoInfo[info_value];
	}else if("Description"==$rowSeoInfo[info_code]){
		$SeoDesc = $rowSeoInfo[info_value];
	}
}

?>
