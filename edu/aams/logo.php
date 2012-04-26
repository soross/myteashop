<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$info = getListBySql("select id,comm_code,remark from comm_code where comm_type='Logo'",$db);
$logo = array();
for ($i = 0; $i < sizeof($info); $i++) {
	if($info[$i][remark]=="Logo"){
		$logo["logo"]=$info[$i][comm_code];
	}
	if($info[$i][remark]=="KouHao"){
		$logo["kh"]=$info[$i][comm_code];
	}
	if($info[$i][remark]=="LinkInfo"){
		$logo["linkinfo"]=$info[$i][comm_code];
	}
}
$smarty->assign("info",$logo);

$smarty->display("logo.html");
?>
