<?php

//�˵�
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

//logo
$logoInfo = getListBySql("select comm_code,remark from comm_code where comm_type='Logo'",$db);
$logo = array();
for ($i = 0; $i < sizeof($logoInfo); $i++) {
	if($logoInfo[$i][remark]=="Logo"){
		$logo["logo"]=$logoInfo[$i][comm_code];
	}
	if($logoInfo[$i][remark]=="KouHao"){
		$logo["kh"]=$logoInfo[$i][comm_code];
	}
	if($logoInfo[$i][remark]=="LinkInfo"){
		$logo["linkinfo"]=$logoInfo[$i][comm_code];
	}
}
$smarty->assign("logoinfo",$logo);

//onlineService
$service = getListBySql("select comm_code,remark,comm_value from comm_code where comm_type='OnlineService'",$db);
$online = array();
for ($i = 0; $i < sizeof($service); $i++) {
	$tmp = array();
	if($service[$i][remark]=="Time"){
		$tmp["text"]=$service[$i][comm_code];
		$tmp["value"]=$service[$i][comm_value];
		$tmp["key"]='Time';
	}
	if($service[$i][remark]=="Tell"){
		$tmp["text"]=$service[$i][comm_code];
		$tmp["key"]='Tell';
	}
	if($service[$i][remark]=="QQ"){
		$tmp["text"]=$service[$i][comm_code];
		$tmp["value"]=$service[$i][comm_value];
		$tmp["key"]='QQ';
	}
	$online[$i]=$tmp;
}
$smarty->assign("online",$online);

//�ײ���Ϣ
$copyInfo = getObject("comm_code where comm_type='Copy_Info'", $db ,"comm_value");
$smarty->assign("copyInfo",$copyInfo[comm_value]);

//�ȵ��Ƽ�1
$newList = getListBySql("select id,title from news where type_id in(select id from type where id='1' or pid='1') order by create_date limit 0,8",$db);
$smarty->assign('newNews',$newList);

//��������15
$hotList = getListBySql("select id,title from news where type_id in(select id from type where id='15' or pid='15') order by create_date limit 0,8",$db);
$smarty->assign('hotNews',$hotList);

//��������9
$downloadList = getListBySql("select id,title from news where type_id in(select id from type where id='9' or pid='9') order by create_date limit 0,8",$db);
$smarty->assign('downloadNews',$downloadList);
?>