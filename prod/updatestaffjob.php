<?php
if(isset($_GET[sjid])&& !empty($_GET[sjid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	//员工作业
	$query = $db->query("select * from staffjob where id = '$_GET[sjid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("staffjobinfo",$info);

	//员工信息
	$stafflist = getListBySql("select id,staffname,staffid from staff order by staffname,staffid",$db);
	$smarty->assign("stafflist",$stafflist);

	//产品信息
	$prodinfo = getListBySql("select * from prod where id='".$info[prodid]."'",$db);
	$smarty->assign("prodinfo",$prodinfo[0]);
	//print_r($prodinfo[0]);
	//订单信息
	$orderinfo = getListBySql("select * from orderitem where id='".$info[orderid]."'",$db);
	$smarty->assign("orderinfo",$orderinfo[0]);

	//订单详细信息
	$orderlistinfo = getListBySql("select * from orderlist where id='".$info[orderlistid]."'",$db);
	$smarty->assign("orderlistinfo",$orderlistinfo[0]);

	//工种信息
	$jobinfo = getListBySql("select * from job where id='".$info[jobid]."'",$db);
	$smarty->assign("jobinfo",$jobinfo[0]);

	$smarty->display("updatestaffjob.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
