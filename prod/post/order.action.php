<?php
require_once ("../action/checkAamsLogin.php");
require_once ("../action/mysql.class.php");
if (isset ($_GET[task]) && "orderpass" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("update orderpass set orderpass='" . md5($_GET[orderpass]) . "' where id ='" . $_GET[id] . "'");
			echo "<script>alert('�����޸ĳɹ�!');location.href='../orderpass.php';</script>";
		} else {
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../orderpass.php';</script>";
		}
	} else {
		echo "<script>alert('�Ƿ�����!" . $_GET[id] . "');location.href='../admin.php';</script>";
	}
}
//��֤��������
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
			echo "<script>alert('�����������!');location.href='../orderpass.php'</script>"; //?error=".md5('PASSWORD')."
		}
	}

//��������
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
					echo "<script>alert('û��ѡ�񶩵���ϸ�еĲ�Ʒ����!');location.href='../addorder.php'</script>";
					exit;
				}
			}

			$db->query("update orderitem set orderprice = '".$orderprice."' where id='".$insertID."'");

			if (mysql_errno()) {
				$db->query('rollback');
				echo "<script>alert('��������ʧ��!');location.href='../addorder.php'</script>";
			} else {
				$db->query('commit');
				echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addorder.php';}else{location.href='../orderlist.php';}</script>";
			}
		} else {
			echo "<script>alert('��ѡ��ͻ�!');location.href='../addorder.php'</script>";
		}
	}
//ɾ������
else
	if(isset ($_GET[task]) && $_GET[task] == "deleteOrderItem"){
		if(isset($_GET[itemid])&&!empty($_GET[itemid])){
			$db->query('start transaction');
			$db->query("delete from orderitem where id = '".$_GET[itemid]."'");
			$db->query("delete from orderlist where orderid = '".$_GET[itemid]."'");
			if (mysql_errno()) {
				$db->query('rollback');
				echo "<script>alert('ɾ������ʧ��!');location.href='../orderlist.php'</script>";
			} else {
				$db->query('commit');
				echo "<script>alert('�����ѳɹ�ɾ��!');location.href='../orderlist.php'</script>";
			}
		}else{
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//ɾ��������ϸ
else
	if(isset ($_GET[task]) && $_GET[task] == "deleteOrderList"){
		if(isset($_GET[listid])&&!empty($_GET[listid])){
			$db->query("delete from orderlist where id = '".$_GET[listid]."'");
			echo "<script>alert('������ϸ�ѳɹ�ɾ��!');location.href='../orderlist.php'</script>";
		}else{
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//����
else
	if(isset ($_GET[task]) && $_GET[task] == "orderJC"){
		if(isset($_GET[itemid])&&!empty($_GET[itemid])){
			$db->query("select * from orderlist where isfinish='0' and orderid='".$_GET[itemid]."'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				echo "<script>alert('������ϸδȫ������,����ʧ��!');location.href='../orderlist.php'</script>";
			}else{
				$db->query("update orderitem set jcdate=now() where id = '".$_GET[itemid]."'");
				echo "<script>alert('�����ѳɹ�����!');location.href='../orderlist.php'</script>";
			}
		}else{
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//������ϸ�깤
else
	if(isset ($_GET[task]) && $_GET[task] == "orderListFinish"){
		if(isset($_GET[listid])&&!empty($_GET[listid])){
			$db->query("update orderlist set isfinish='1',finish_date=now() where id = '".$_GET[listid]."'");
			echo "<script>alert('������ϸ�ѿ���!');location.href='../orderlist.php'</script>";
		}else{
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}
?>
