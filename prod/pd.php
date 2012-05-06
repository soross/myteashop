<?php
require_once("action/checkAamsLogin.php");
require_once("action/checkOrderPassword.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$seqid= $_GET[orderid];
//$seqid="20120416045027891592";

$db->query("select id from orderitem where pddate is null and orderid='".$seqid."'");
$cnt=$db->db_num_rows();
$smarty->assign("orderid",$seqid);
if($cnt>0){
	//订单信息
	$sql = "SELECT oi.id,c.custname,oi.orderid,oi.pddate,oi.jcdate,
		oi.custid,oi.orderprice,oi.create_date,oi.create_user,oi.edit_date,
		oi.edit_user,oi.edit_reason FROM orderitem AS oi LEFT JOIN customer AS c ON oi.custid = c.id
		where oi.orderid='".$seqid."'";
	$orderInfoList = getListBySql($sql,$db);

	$smarty->assign("orderinfo",$orderInfoList[0]);

	//订单详情
	$sql2="select ol.*,(select p.prodid from prod p where p.id = ol.prodid)as prodname " .
		"from orderlist ol where ol.orderid ='".$orderInfoList[0][id]."'";
	$orderlist = getListBySql($sql2,$db);
	$smarty->assign("orderlist",$orderlist);
	//print_r($sql2);

	//产品作业
	$sql3="SELECT ol.id AS olid, ol.orderid,ol.cnt,ol.itemprice,ol.isfinish,
		ol.finish_date,j.jobname,p.id AS pid,p.prodid,p.picname,j.id AS jid
		FROM orderlist AS ol LEFT JOIN prodjob AS pj ON ol.prodid = pj.prodid
		LEFT JOIN prod AS p ON ol.prodid = p.id LEFT JOIN job AS j ON pj.jobid = j.id
		where ol.orderid ='".$orderInfoList[0][id]."'";
	$prodjoblist = getListBySql($sql3,$db);
	$smarty->assign("prodjoblist",$prodjoblist);

	//员工信息
	$stafflist = getListBySql("select id,staffname,staffid from staff order by staffname,staffid",$db);
	$smarty->assign("stafflist",$stafflist);

	//员工作业信息
	$staffjoblist = getListBySql("select * from staffjob where orderid='".$orderInfoList[0][id]."'",$db);
	$smarty->assign("staffjoblist",$staffjoblist);
}else{
	if(!empty($seqid)){
		$smarty->assign("isOverAllPd","<font style='color:red;'>该订单已经完成排单!</font>");
	}else{
		$smarty->assign("isOverAllPd","<font style='color:red;'>没有所要查询的数据....</font>");
	}
}
$smarty->display("pd.html");
?>
