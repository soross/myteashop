<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/page.class.php");
require_once("action/public_info.php");
$smarty->assign("HELP_LI","class='beijingwu'");
$smarty->assign("HELP_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("HELP_A_CSS",'style="color: rgb(0, 0, 0); font-family: ����;"');


$pagesize = 20;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from lm_news where type=-1");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select * from lm_news where type=-1 order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("newsRow",$newsRow);

$smarty->display("help.html");
?>
