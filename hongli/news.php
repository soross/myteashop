<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/page.class.php");
require_once("action/public_info.php");
$smarty->assign("NEWS_LI","class='beijingwu'");
$smarty->assign("NEWS_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("NEWS_A_CSS",'style="color: rgb(0, 0, 0); font-family: ����;"');

$where=" where type<>'-1' ";
if(isset($_GET['type']) && !empty($_GET['type'])){
	$where = $where." and type='".$_GET['type']."' ";
	$smarty->assign("newsType",$_GET['type']);
}else{
	$smarty->assign("",$_GET['type']);
}

$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from lm_news" .$where);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select * from lm_news ".$where." order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("newsRow",$newsRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//����ʾ���˶�̬�����˹���
$smarty->assign("showNewsList","none");


$smarty->display("news.html");
?>
