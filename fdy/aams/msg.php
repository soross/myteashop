<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 12;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from message");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//��Ʒ�б�
$zxlyQuery = $db->query("select n.* from message n order by create_date desc limit $firstcount, $displaypg");
$prodRow = array();
while($rowprod = $db->fetch_array($prodQuery)){
	$zxlyRow[] = $rowprod;
}
$smarty->assign("msg",$zxlyRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("msg.html");
?>
