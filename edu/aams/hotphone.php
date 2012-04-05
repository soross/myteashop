<?php
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");


	$info = getObject("comm_code where comm_type='Hot_Phone'",$db,'comm_value');

	$smarty->assign("info",$info);

	$smarty->display("hotphone.html");

?>
