<?php
if(isset($_GET[prodid]) && !empty($_GET[prodid])){
	include_once("action/smarty_inc.php");
	include_once("action/mysql.class.php");
	include_once("action/prod_public_info.php");

	$info = getInfo("prod p ,prod_type t where p.type_id=t.id ",$db,"p.*,t.type_name");
	$smarty->assign("prodinfo",$info);

	$smarty->display("prodinfo.htm");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
