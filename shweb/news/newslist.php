<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");
require_once("../action/public_info.php");

$pagesize = 10;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("select id from news");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select id,title,create_date from news order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rowR = $db->fetch_array($newsQuery)){
	$newsRow[] = $rowR;
}
$smarty->assign("newsList",$newsRow);


//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; <font color='#FF3300'>������Ѷ</font>";
$smarty->assign("address",$address);

$smarty->display("news/newslist.html");
?>
