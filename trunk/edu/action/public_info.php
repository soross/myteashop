<?php

//菜单
$menulist = getListBySql("select flag,comm_code from comm_code where comm_type='Menu' order by (remark+0) ", $db );
$smarty->assign("menulist",$menulist);

//SEO
$title = getObject("comm_code where comm_type='SEO_Title'",$db,"comm_value");
$keyword = getObject("comm_code where comm_type='SEO_Keyword'",$db,"comm_value");
$desc = getObject("comm_code where comm_type='SEO_DESC'",$db,"comm_value");
$seo = array();
$seo['title']=$title[comm_value];
$seo['keyword']=$keyword[comm_value];
$seo['desc']=$desc[comm_value];

$smarty->assign("seo",$seo);

//底部信息
$copyInfo = getObject("comm_code where comm_type='Copy_Info'", $db ,"comm_value");
$smarty->assign("copyInfo",$copyInfo[comm_value]);

//热点推荐1
$newList = getListBySql("select id,title from news where type_id in(select id from type where id='1' or pid='1') order by create_date limit 0,8",$db);
$smarty->assign('newNews',$newList);

//新闻中心15
$hotList = getListBySql("select id,title from news where type_id in(select id from type where id='15' or pid='15') order by create_date limit 0,8",$db);
$smarty->assign('hotNews',$hotList);

//资料下载9
$downloadList = getListBySql("select id,title from news where type_id in(select id from type where id='9' or pid='9') order by create_date limit 0,8",$db);
$smarty->assign('downloadNews',$downloadList);
?>
