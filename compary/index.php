<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
//��Ʒ����
$queryProdClass = $db->query("select * from prod_class");
//print_r($queryProdClass);
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//flash�豸չʾģ��
$queryFlash = $db->query("select * from prod order by create_date desc limit 0,4");
$rowF = array();
while($rowFlash = $db->fetch_array($queryFlash)){
	$rowF[] = $rowFlash;
}
$smarty->assign("flash",$rowF);

//���·�����ģ��
$queryRoll = $db->query("select * from prod where state='1' order by create_date desc limit 0,8");
$rowR = array();
while($rowRoll = $db->fetch_array($queryRoll)){
	$rowR[] = $rowRoll;
}
$smarty->assign("roll",$rowR);

//��˾������� ͼƬ+�ı�
$queryInfo = $db->query("select * from comm_info where info_type='AboutUs'");
while($rowInfo = $db->fetch_array($queryInfo)){
	if("ImageIndex"==$rowInfo[info_code]){
		//echo $rowInfo[info_value];
		$smarty->assign("imagePath",$rowInfo[info_value]);
	}else if("Text"==$rowInfo[info_code]){
		//echo $rowInfo[info_value];
		$smarty->assign("textContent",$rowInfo[info_value]);
	}
}//


//���Ź���
$newListQuery = $db->query("select id,title,news_info_url from news order by create_date desc limit 0,5");
$newsListStr = "&nbsp;&nbsp;&nbsp;&nbsp;";
while($rowNewsList = $db->fetch_array($newListQuery)){
	$newsListStr .=  "<A href='../news/".$rowNewsList[news_info_url]."' target='_blank' title='".$rowNewsList[title]."'>".$db->cn_substr($rowNewsList[title],0,29)."</A>&nbsp;&nbsp;&nbsp;&nbsp;";
}
$smarty->assign("newsListStr",$newsListStr);

//��ע��Ϣ
$queryButtomInfo = $db->query("select * from comm_info where info_type='ButtomInfo'");
$rowButtomInfo = $db->fetch_array($queryButtomInfo);
$smarty->assign("buttomInfo",$rowButtomInfo[info_value]);


$smarty->assign("title","��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","�������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//print_r($rowPC);
$smarty->display("index.html");

$content = $smarty->fetch('index.html');
$db->makeSearchData("../index.php",$content);

//$filename = "index.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";
?>