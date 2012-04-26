<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = $service = getListBySql("select id,comm_code,remark,comm_value from comm_code where comm_type='OnlineService'",$db);
$online = array();
for ($i = 0; $i < sizeof($service); $i++) {
	$tmp = array();
	if($service[$i][remark]=="Time"){
		$tmp["id"]=$service[$i][id];
		$tmp["text"]=$service[$i][comm_code];
		$tmp["value"]=$service[$i][comm_value];
		$tmp["key"]='Time';
	}
	if($service[$i][remark]=="Tell"){
		$tmp["id"]=$service[$i][id];
		$tmp["text"]=$service[$i][comm_code];
		$tmp["key"]='Tell';
	}
	if($service[$i][remark]=="QQ"){
		$tmp["id"]=$service[$i][id];
		$tmp["text"]=$service[$i][comm_code];
		$tmp["value"]=$service[$i][comm_value];
		$tmp["key"]='QQ';
	}
	$online[$i]=$tmp;
}
$smarty->assign("online",$online);

$smarty->display("imconfig.html");
?>
