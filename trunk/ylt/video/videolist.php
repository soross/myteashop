<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//����������
$smarty->clear_cache('video/videolist.html'); //���index.tpl�Ļ���
require_once("../action/public_info.php");

/**
//��ȡ��ѯ����
$key = $_GET[key];
$classcode = $_GET[classcode];

//ƴװ����
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (video_name like '%$key%' or video_desc like '%$key%' or prod_summary like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and prod_class=$classcode ";
}
**/

$pagesize = 10;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("select id from video" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�б�
$videoQuery = $db->query("select id,video_name,video_picture,create_date from video ".$where." order by create_date desc limit $firstcount, $displaypg ");
$videoRow = array();
while($rowR = $db->fetch_array($videoQuery)){
	$videoRow[] = $rowR;
}
$smarty->assign("videoRow",$videoRow);


//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


//��Ʒ����
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);


//����
$smarty->assign("title","��Ѷ����|".$SeoTitle);
$smarty->assign("keywords","��Ѷ����|".$SeoKeywords);
$smarty->assign("description","��Ѷ����|".$SeoDesc);


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; ��Ѷ����";
$smarty->assign("address",$address);

$smarty->display("video/videolist.html");
?>
