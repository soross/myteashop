<?php
if(isset($_GET[sjid])&& !empty($_GET[sjid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	//Ա����ҵ
	$query = $db->query("select * from staffjob where id = '$_GET[sjid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("staffjobinfo",$info);

	//Ա����Ϣ
	$stafflist = getListBySql("select id,staffname,staffid from staff order by staffname,staffid",$db);
	$smarty->assign("stafflist",$stafflist);

	//��Ʒ��Ϣ
	$prodinfo = getListBySql("select * from prod where id='".$info[prodid]."'",$db);
	$smarty->assign("prodinfo",$prodinfo[0]);
	//print_r($prodinfo[0]);
	//������Ϣ
	$orderinfo = getListBySql("select * from orderitem where id='".$info[orderid]."'",$db);
	$smarty->assign("orderinfo",$orderinfo[0]);

	//������ϸ��Ϣ
	$orderlistinfo = getListBySql("select * from orderlist where id='".$info[orderlistid]."'",$db);
	$smarty->assign("orderlistinfo",$orderlistinfo[0]);

	//������Ϣ
	$jobinfo = getListBySql("select * from job where id='".$info[jobid]."'",$db);
	$smarty->assign("jobinfo",$jobinfo[0]);

	$smarty->display("updatestaffjob.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
