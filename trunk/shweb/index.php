<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

//�����б�
$queryNewsList = $db->query("select id,title from news order by create_date desc limit 0,5");
$rowNewsList = array();
while($rowNews = $db->fetch_array($queryNewsList)){
	$rowNewsList[] = $rowNews;
}
$smarty->assign("newsList",$rowNewsList);

//��Ʒ����
$queryProdList = $db->query("select * from prod where state='1' order by create_date desc limit 0,10");
$rowProdList = array();
while($rowProd = $db->fetch_array($queryProdList)){
	$rowProdList[] = $rowProd;
}
$smarty->assign("prodList",$rowProdList);

//�ײ���Ϣ
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("buttomInfo",$rowButtom);

//��ҳbanner
$banner = "<script>";
$queryBanner = $db->query("select url,text,link from banner");
$index = 1;
while($rowBanner = $db->fetch_array($queryBanner)){
	$banner = $banner."imgUrl".$index."='images/".$rowBanner[url]."';";
	$banner = $banner."imgtext".$index."='".$rowBanner[text]."';";
	$banner = $banner." imgLink".$index."=escape('".$rowBanner[link]."');";
	$index++;
}
$banner = $banner."</script>";
$smarty->assign("banner",$banner);

//��˾���
$query = $db->query("select remark from comm_info where info_type='CompanyIndex'");
$row = $db->fetch_array($query);
$smarty->assign("CompanyInfo",$row);

//�ͻ���Ϣ
$query = $db->query("select id,remark from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);

//����
$smarty->assign("title","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾   ������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");
$smarty->assign("keywords","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾ ,�Ϻ��ǰ�,�ǰ�����Ϳװ,������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");
$smarty->assign("description","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾ ,�Ϻ��ǰ�,�ǰ�����Ϳװ,������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");

$smarty->display("index.html");
?>