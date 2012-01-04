<?php
if(isset($_GET[task])&& "toUpdateProduct"==$_GET[task]&& isset($_GET[prodid])&& !empty($_GET[prodid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$rows = getRows(" product_type where remark='1' ",$db);
	$smarty->assign("typeRows",$rows);

	$info = getInfo("product where id='$_GET[prodid]'",$db);

	$smarty->assign("info",$info);

	$smarty->display("updateprod.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
