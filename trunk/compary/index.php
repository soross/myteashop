<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
//��Ʒ����
$queryProdClass = $db->query("select id,class_name,url from prod_class");
//print_r($queryProdClass);
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//flash�豸չʾģ��
$queryFlash = $db->query("select id,prod_name,prod_picture,prod_info_url,case_info_url from prod order by create_date desc limit 0,4");
$rowF = array();
while($rowFlash = $db->fetch_array($queryFlash)){
	$rowF[] = $rowFlash;
}
$smarty->assign("flash",$rowF);

//���·�����ģ��
$queryRoll = $db->query("select id,prod_name,prod_picture,prod_info_url,case_info_url from prod where state='1' order by create_date desc limit 0,8");
$rowR = array();
while($rowRoll = $db->fetch_array($queryRoll)){
	$rowR[] = $rowRoll;
}
$smarty->assign("roll",$rowR);

//��˾������� ͼƬ+�ı�
$queryInfo = $db->query("select info_value,info_code from comm_info where info_type='AboutUs'");
while($rowInfo = $db->fetch_array($queryInfo)){
	if("ImageIndex"==$rowInfo[info_code]){
		$smarty->assign("imagePath",$rowInfo[info_value]);
	}else if("Text"==$rowInfo[info_code]){
		$smarty->assign("textContent",$rowInfo[info_value]);
	}
}


//���Ź���
$newListQuery = $db->query("select id,title,news_info_url from news order by create_date desc limit 0,5");
$newsListStr = "&nbsp;&nbsp;&nbsp;&nbsp;";
while($rowNewsList = $db->fetch_array($newListQuery)){
	$newsListStr .=  "<A href='news/".$rowNewsList[news_info_url]."' target='_blank' title='".$rowNewsList[title]."'>".$db->cn_substr($rowNewsList[title],0,29)."</A>&nbsp;&nbsp;&nbsp;&nbsp;";
}
$smarty->assign("newsListStr",$newsListStr);

//����ר��
$newsListQueryByTech = $db->query("select id,title,news_info_url,create_date from news where news_class='3' order by create_date desc limit 0,5");
$newsListByTech = array();
while($rowNewsList = $db->fetch_array($newsListQueryByTech)){
	$newsListByTech[] = $rowNewsList;
}
$smarty->assign("newsListByTech",$newsListByTech);

//������ժ
$newsListQueryByInter = $db->query("select id,title,news_info_url,create_date from news where news_class='4' order by create_date desc limit 0,5");
$newsListByInter = array();
while($rowNewsList = $db->fetch_array($newsListQueryByInter)){
	$newsListByInter[] = $rowNewsList;
}
$smarty->assign("newsListByInter",$newsListByInter);


//��������
$linkQuery = $db->query("select id,link_name,link_url from link");
$linkList = array();
while($linkRow = $db->fetch_array($linkQuery)){
	$linkList[] = $linkRow;
}
$smarty->assign("linkList",$linkList);


//��ע��Ϣ
$queryButtomInfo = $db->query("select info_value from comm_info where info_type='ButtomInfo'");
$rowButtomInfo = $db->fetch_array($queryButtomInfo);
$smarty->assign("buttomInfo",$rowButtomInfo[info_value]);


$querySeoInfo = $db->query("select info_value,info_code from comm_info where info_type='SeoInfo'");
while ($rowSeoInfo = $db->fetch_array($querySeoInfo)) {
	if("Keywords"==$rowSeoInfo[info_code]){
		$smarty->assign("keywords", $rowSeoInfo[info_value]);
	}else if("Title"==$rowSeoInfo[info_code]){
		$smarty->assign("title",$rowSeoInfo[info_value]);
	}else if("Description"==$rowSeoInfo[info_code]){
		$smarty->assign("description",$rowSeoInfo[info_value]);
	}
}

$smarty->display("index.html");

$content = $smarty->fetch('index.html');
$db->makeSearchData("../index.php",$content);

//$filename = "index.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";
?>