<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/page.class.aams.php");
require_once("action/mysql.class.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from lm_card where create_card='0'");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;


//δ��˻�Ա����
$cardQuery = $db->query("select * from lm_card where create_card='0' order by create_date desc limit $firstcount, $displaypg");
$cardRow = array();
while($rowcard = $db->fetch_array($cardQuery)){
	$cardRow[] = $rowcard;
}
$smarty->assign("cardRow",$cardRow);


//��ʾ��ҳ������
$smarty->assign("page",$pagenav);
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/nocard.html");
?>
