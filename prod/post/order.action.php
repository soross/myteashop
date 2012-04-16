<?php
require_once ("../action/checkAamsLogin.php");
require_once ("../action/mysql.class.php");
if (isset ($_GET[task]) && "orderpass" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("update orderpass set orderpass='" . md5($_GET[orderpass]) . "' where id ='" . $_GET[id] . "'");
			echo "<script>alert('密码修改成功!');location.href='../orderpass.php';</script>";
		} else {
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../orderpass.php';</script>";
		}
	} else {
		echo "<script>alert('非法操作!" . $_GET[id] . "');location.href='../admin.php';</script>";
	}
}
//验证订单密码
else
	if (isset ($_POST[task]) && $_POST[task] == "checkOrderPassword") {
		session_start();
		$userid = $_POST[id];
		$query = $db->query("select * from user where id = '" . $userid . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[orderpass]) == $row[orderpass] : FALSE;
		if ($ps) {
			$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = mktime();
			echo "<script>location.href='../orderlist.php'</script>";
		} else {
			echo "#" . $userid . "#" . md5($_POST[orderpass]) . "#" . $row[orderpass] . "##";
			echo "<script>alert('订单密码错误!');location.href='../orderpass.php'</script>"; //?error=".md5('PASSWORD')."
		}
	}

//新增订单
else
	if (isset ($_POST[task]) && $_POST[task] == "addOrder") {
		if (isset ($_POST[custid]) && $_POST[custid] != -1) {
			$db->query('start transaction');
			$orderid = randNum();
			$db->query("insert into orderitem(orderid,custid,create_date) values('" . $orderid . "','$_POST[custid]',now())");
			$insertID = $db->insert_id();

			$prodid = $_POST[prodid];
			$cnt = $_POST[cnt];
			$itemprice = $_POST[itemprice];

			$orderprice = 0;
			for ($i = 0; $i < count($prodid); $i++) {
				if ($prodid[$i] != -1) {
					$db->query("insert into orderlist(orderid,prodid,cnt,itemprice) values('" . $insertID . "','" . $prodid[$i] . "','" . $cnt[$i] . "','" . $itemprice[$i] . "')");
					$orderprice = $orderprice+($cnt[$i]*$itemprice[$i]);
				} else {
					$db->query('rollback');
					echo "<script>alert('没有选择订单明细中的产品名称!');location.href='../addorder.php'</script>";
					exit;
				}
			}

			$db->query("update orderitem set orderprice = '".$orderprice."' where id='".$insertID."'");

			if (mysql_errno()) {
				$db->query('rollback');
				echo "<script>alert('新增订单失败!');location.href='../addorder.php'</script>";
			} else {
				$db->query('commit');
				echo "<script>if(confirm('新增订单成功,是否继续新增?')){location.href='../addorder.php';}else{location.href='../orderlist.php';}</script>";
			}
		} else {
			echo "<script>alert('请选择客户!');location.href='../addorder.php'</script>";
		}
	}
//删除订单
else
	if(isset ($_GET[task]) && $_GET[task] == "deleteOrderItem"){
		if(isset($_GET[itemid])&&!empty($_GET[itemid])){
			$db->query('start transaction');
			$db->query("delete from orderitem where id = '".$_GET[itemid]."'");
			$db->query("delete from orderlist where orderid = '".$_GET[itemid]."'");
			if (mysql_errno()) {
				$db->query('rollback');
				echo "<script>alert('删除订单失败!');location.href='../orderlist.php'</script>";
			} else {
				$db->query('commit');
				echo "<script>alert('订单已成功删除!');location.href='../orderlist.php'</script>";
			}
		}else{
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//删除订单明细
else
	if(isset ($_GET[task]) && $_GET[task] == "deleteOrderList"){
		if(isset($_GET[listid])&&!empty($_GET[listid])){
			$db->query("delete from orderlist where id = '".$_GET[listid]."'");
			echo "<script>alert('订单明细已成功删除!');location.href='../orderlist.php'</script>";
		}else{
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//进仓
else
	if(isset ($_GET[task]) && $_GET[task] == "orderJC"){
		if(isset($_GET[itemid])&&!empty($_GET[itemid])){
			$db->query("select * from orderlist where isfinish='0' and orderid='".$_GET[itemid]."'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				echo "<script>alert('订单明细未全部竣工,进仓失败!');location.href='../orderlist.php'</script>";
			}else{
				$db->query("update orderitem set jcdate=now() where id = '".$_GET[itemid]."'");
				echo "<script>alert('订单已成功进仓!');location.href='../orderlist.php'</script>";
			}
		}else{
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//订单明细完工
else
	if(isset ($_GET[task]) && $_GET[task] == "orderListFinish"){
		if(isset($_GET[listid])&&!empty($_GET[listid])){
			$db->query("update orderlist set isfinish='1',finish_date=now() where id = '".$_GET[listid]."'");
			echo "<script>alert('订单明细已竣工!');location.href='../orderlist.php'</script>";
		}else{
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}
?>
