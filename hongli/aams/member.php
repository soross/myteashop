<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from lm_member");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$mbnQuery = $db->query("select * from lm_member order by create_date desc limit $firstcount, $displaypg");
$mbRow = array();
while($rowmb = $db->fetch_array($mbQuery)){
	$mbRow[] = $rowmb;
}
$smarty->assign("mbRow",$mbRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/member.html");
?>
