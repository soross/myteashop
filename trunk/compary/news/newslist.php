<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//����������
$smarty->clear_cache('news/newslist.html'); //���index.tpl�Ļ���
require_once("../action/public_info.php");

//��ȡ��ѯ����
$key = $_GET[key];
$classcode = $_GET[classcode];

//ƴװ����
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (title like '%$key%' or content like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and news_class=$classcode ";
}


$pagesize = 8;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("select id from news" .$where);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select id,title,create_date,news_info_url from news ".$where." order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rowR = $db->fetch_array($newsQuery)){
	$newsRow[] = $rowR;
}
$smarty->assign("newsRow",$newsRow);

//��������
$newsClassQuery = $db->query("select id,class_name,url from news_class");
$newsClassRow = array();
while($rowCR = $db->fetch_array($newsClassQuery)){
	$newsClassRow[] = $rowCR;
}
$smarty->assign("newsClassRow",$newsClassRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//����
$smarty->assign("title","���Ŷ�̬|".$SeoTitle);
$smarty->assign("keywords","���Ŷ�̬|".$SeoKeywords);
$smarty->assign("description","���Ŷ�̬|".$SeoDesc);


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ���Ŷ�̬";
$smarty->assign("address",$address);

$smarty->display("news/newslist.html");

$content = $smarty->fetch('news/newslist.html');
$db->makeSearchData($url."=".$page,$content);
?>
