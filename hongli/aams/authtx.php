<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("action/mysql.class.php");

//未审核会员分类
$authTxQuery = $db->query("select mm.*,m.mb_name,m.phone from lm_mb_money mm,lm_member m where mm.mb_id=m.id and mm.state='0' order by create_date ");
$authTxRow = array();
while($rowauthTx = $db->fetch_array($authTxQuery)){
	$authTxRow[] = $rowauthTx;
}
$smarty->assign("authTxRow",$authTxRow);



$bankQuery = $db->query("select * from lm_comm_code where type_name='BankInfo'");
$bank =  $db->fetch_array($bankQuery);
$smarty->assign("Bank",$bank);
$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
$smarty->display("aams/authtx.html");
?>
