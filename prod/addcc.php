<?php
require_once("action/checkAamsLogin.php");
require_once("action/mysql.class.php");

$db->query("select * from orderlist where isfinish='0' and orderid=(select id from orderitem where orderid='" . $_GET[orderid] . "')");
$cnt = $db->db_num_rows();
if ($cnt < 1) {
	require_once("action/smarty_inc.php");
	if(isset($_GET[orderid])&& !empty($_GET[orderid])){
		$smarty->assign("orderid",$_GET[orderid]);
	}
	$stafflist = getListBySql("select id,staffid,staffname from staff order by staffname",$db);
	$smarty->assign("stafflist",$stafflist);

	$smarty->display("addcc.html");
}else{
	echo "<script>alert('订单明细未全部竣工,无法操作出仓!');location.href='orderlist.php'</script>";
}
?>
