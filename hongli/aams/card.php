<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/page.class.aams.php");
require_once("action/mysql.class.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from lm_card");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//未审核会员分类
$cardQuery = $db->query("select * from lm_card order by create_date desc limit $firstcount, $displaypg");
$cardRow = array();
while($rowcard = $db->fetch_array($cardQuery)){
	$cardRow[] = $rowcard;
}
$smarty->assign("cardRow",$cardRow);

$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
//显示分页的内容
$smarty->assign("page",$pagenav);
$smarty->display("aams/card.html");
?>
