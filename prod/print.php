<?php
if(isset($_GET[salid])&& !empty($_GET[salid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select s.* from sal s where s.id = '$_GET[salid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("salinfo",$info);

	$m = date( "m" );
	$y = date( "Y" );
	if($m-1 ==0){
		$y = $y-1;
		$m = 12;
	}else{
		$m=$m-1;
	}

	$yzinfo = getListBySql("select sum(money) from yz where m_yz=$m and y_yz=$y and staffid = '".$info[id]."'");

	$smarty->assign("yzmoney",$yzinfo[0]);


	$smarty->display("print.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
