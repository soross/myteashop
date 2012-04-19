<?php
if(isset($_GET[salid])&& !empty($_GET[salid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	//工资总单
	$query = $db->query("select s.*,sf.id as sfid,sf.staffid,sf.staffname from sal s left join staff sf on s.staffid = sf.id where s.id = '$_GET[salid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("salinfo",$info);

	//预支
	$m = date( "m" );
	$y = date( "Y" );
	if($m-1 ==0){
		$y = $y-1;
		$m = 12;
	}else{
		$m=$m-1;
	}
	$yzinfo = getListBySql("select sum(money) as money from yz where m_yz=$m and y_yz=$y and staffid = '".$info[sfid]."'",$db);
	$smarty->assign("yzmoney",$yzinfo[0]);
	//print_r($info[sfid]);
	//作业清单
	$staffjob = getListBySql("SELECT oi.orderid,sj.amount,j.jobname,p.prodid,p.picname,
		sj.jobpriceid FROM 	staffjob AS sj LEFT JOIN orderitem AS oi ON sj.orderid = oi.id
		LEFT JOIN job AS j ON j.id = sj.jobid LEFT JOIN prod AS p ON sj.prodid = p.id where sj.staffid='".$info[sfid]."'",$db);
	$smarty->assign("staffjob",$staffjob);

	$smarty->display("print.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
