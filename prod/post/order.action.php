<?php
require_once ("../action/checkAamsLogin.php");
require_once ("../action/mysql.class.php");
if (isset ($_GET[task]) && "orderpass" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("update orderpass set orderpass='" . md5($_GET[orderpass]) . "' where id ='" . $_GET[id] . "'");
			$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "���������޸�", "�����޸ĳɹ�!");
			echo "<script>alert('�����޸ĳɹ�!');location.href='../orderpass.php';</script>";
		} else {
			$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "���������޸�", "���ǹ���Ա,�޷��޸ı��˵�����!");
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../orderpass.php';</script>";
		}
	} else {
		$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "���������޸�", "�Ƿ�����!");
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
			$db->addLog("CAP11002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "������¼", "������¼�ɹ�!");
			echo "<script>location.href='../orderlist.php'</script>";
		} else {
			$db->addLog("CAP11002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "������¼", "�����������!");
			echo "#" . $userid . "#" . md5($_POST[orderpass]) . "#" . $row[orderpass] . "##";
			echo "<script>alert('�����������!');location.href='../orderpass.php'</script>"; //?error=".md5('PASSWORD')."
		}
	}

//��������
else
	if (isset ($_POST[task]) && $_POST[task] == "addOrder") {
		if (isset ($_POST[custid]) && $_POST[custid] != -1) {
			$db->query('start transaction');
			//$orderid = randNum();//��ˮ�����ɣ��ĳ��ֹ�¼��
			$db->query("insert into orderitem(orderid,custid,create_date) values('" . $_POST[orderid] . "','".$_POST[custid]."',now())");
			$insertID = $db->insert_id();

			$prodid = $_POST[prodid];
			$cnt = $_POST[cnt];
			$itemprice = $_POST[itemprice];

			$orderprice = 0;
			for ($i = 0; $i < count($prodid); $i++) {
				if ($prodid[$i] != -1) {
					$db->query("insert into orderlist(orderid,prodid,cnt,itemprice) values('" . $insertID . "','" . $prodid[$i] . "','" . $cnt[$i] . "','" . $itemprice[$i] . "')");
					$orderprice = $orderprice + ($cnt[$i] * $itemprice[$i]);
				} else {
					$db->query('rollback');
					$db->addLog("CAP04008", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����������ϸ", "û��ѡ�񶩵���ϸ�еĲ�Ʒ����!");
					echo "<script>alert('û��ѡ�񶩵���ϸ�еĲ�Ʒ����!');location.href='../addorder.php'</script>";
					exit;
				}
			}

			$db->query("update orderitem set orderprice = '" . $orderprice . "' where id='" . $insertID . "'");

			if (mysql_errno()) {
				$db->query('rollback');
				$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "��������", "��������ʧ��!");
				echo "<script>alert('��������ʧ��!');location.href='../addorder.php'</script>";
			} else {
				$db->query('commit');
				$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "��������", "��ѡ��ͻ�!");
				echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addorder.php';}else{location.href='../orderlist.php';}</script>";
			}
		} else {
			$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "��������", "��ѡ��ͻ�!");
			echo "<script>alert('��ѡ��ͻ�!');location.href='../addorder.php'</script>";
		}
	}
//ɾ������
else
	if (isset ($_GET[task]) && $_GET[task] == "deleteOrderItem") {
		if (isset ($_GET[itemid]) && !empty ($_GET[itemid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->query('start transaction');
				$db->query("delete from orderitem where id = '" . $_GET[itemid] . "'");
				$db->query("delete from orderlist where orderid = '" . $_GET[itemid] . "'");
				if (mysql_errno()) {
					$db->query('rollback');
					$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ������", "ɾ������ʧ��!");
					echo "<script>alert('ɾ������ʧ��!');location.href='../orderlist.php'</script>";
				} else {
					$db->query('commit');
					$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "ɾ������", "�����ѳɹ�ɾ��!");
					echo "<script>alert('�����ѳɹ�ɾ��!');location.href='../orderlist.php'</script>";
				}
			}else{
				$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ������", "ɾ������ʧ��!");
				echo "<script>alert('�������ŵ�,�޷�ɾ��!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ������", "�Ƿ�����!");
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//ɾ��������ϸ
else
	if (isset ($_GET[task]) && $_GET[task] == "deleteOrderList") {
		if (isset ($_GET[listid]) && !empty ($_GET[listid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->query("select id from orderlist where isfinish='0' and id = '" . $_GET[listid] . "'");
				$count = $db->db_num_rows();
				if($count<1){
					$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ��������ϸ", "ɾ��������ϸʧ��,����ϸ�Ѿ�����!");
					echo "<script>alert('ɾ��������ϸʧ��,����ϸ�Ѿ�����!');location.href='../orderlist.php'</script>";
				}else{
					$db->query("delete from orderlist where id = '" . $_GET[listid] . "'");
					$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "ɾ��������ϸ", "������ϸ�ѳɹ�ɾ��!");
					echo "<script>alert('������ϸ�ѳɹ�ɾ��!');location.href='../orderlist.php'</script>";
				}
			}else{
				$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ��������ϸ", "ɾ��������ϸʧ��!");
				echo "<script>alert('�������ŵ�,�޷�ɾ��!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "ɾ��������ϸ", "�Ƿ�����!");
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//����
else
	if (isset ($_POST[task]) && $_POST[task] == "orderJC") {
		if (isset ($_POST[itemid]) && !empty ($_POST[itemid])) {
			$db->query("select * from orderlist where isfinish='0' and orderid='" . $_POST[itemid] . "'");
			$cnt = $db->db_num_rows();
			if ($cnt > 0) {
				$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����", "������ϸδȫ������,����ʧ��!");
				echo "<script>alert('������ϸδȫ������,����ʧ��!');location.href='../orderlist.php'</script>";
			} else {
				$db->query("update orderitem set jcdate='".$_POST[sdate]."' where id = '" . $_POST[itemid] . "'");
				$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "����", "�����ѳɹ�����!");
				echo "<script>alert('�����ѳɹ�����!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����", "�Ƿ�����!");
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//����
else
	if (isset ($_POST[task]) && $_POST[task] == "orderCC") {
		if (isset ($_POST[orderid]) && !empty ($_POST[orderid])) {
			$db->query("select * from orderlist where isfinish='0' and orderid=(select id from orderitem where orderid='" . $_POST[orderid] . "')");
			$cnt = $db->db_num_rows();
			if ($cnt > 0) {
				$db->addLog("CAP04007", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����", "������ϸδȫ������,����ʧ��!");
				echo "<script>alert('������ϸδȫ������,����ʧ��!');location.href='../orderlist.php'</script>";
			} else {
				$db->query("update orderitem set ccdate='".$_POST[sdate]."',staffid='".$_POST[staffid]."',yhy='".$_POST[yhy]."' where orderid = '" . $_POST[orderid] . "' ");
				$db->addLog("CAP04007", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "����", "�����ѳɹ�����!");
				echo "<script>alert('�����ѳɹ�����!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����", "�Ƿ�����!");
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}
//������ϸ�깤
else
	if (isset ($_GET[task]) && $_GET[task] == "orderListFinish") {
		if (isset ($_GET[listid]) && !empty ($_GET[listid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "������ϸ����", "������ϸ�ѿ���ʧ��!");
				echo "<script>alert('�ö���δ�ŵ�,�޷���������!');location.href='../orderlist.php'</script>";
			}else{
				$db->query("update orderlist set isfinish='1',finish_date=now() where id = '" . $_GET[listid] . "'");
				$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "�ɹ�", "����������ϸ����", "������ϸ�ѿ���!");
				echo "<script>alert('������ϸ�ѿ���!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "ʧ��", "����������ϸ����", "�Ƿ�����!");
			echo "<script>alert('�Ƿ�����!');location.href='../orderlist.php'</script>";
		}
	}

//�ŵ�
else
	if (isset ($_POST[task]) && "addStaffJobMore" == $_POST[task]) {
		$db->query('start transaction');
		//$staffcnt = $_POST[staffcnt];
		//�����õ�implode() ��������PHP����ת�ַ���������PHP�explode() ������������ʵ��PHP�ַ���ת����ġ�
		//$text = implode(",", $vegetables);
		//$vegetables = explode(", ", $text);
		$staffcnt = explode("#",$_POST[staffcnt]);
		$m = date( "m" );
		$y = date( "Y" );
		for($i=0;$i<count($staffcnt);$i++){
			$jobprice = getListBySql("select jobprice from jobprice where jobid='".$_POST[jobid]."' and prodid='".$_POST[prodid]."'",$db);
			$info = explode("-",$staffcnt[$i]);
			$sql = "insert into staffjob(staffid,jobpriceid,prodid,orderid,orderlistid,jobid,amount,m_job,y_job,create_date) ".
					"values('".$info[0]."','".$jobprice[0][jobprice]."','".$_POST[prodid]."','".$_POST[oid]."','".$_POST[olid]."','".$_POST[jobid]."','".$info[1]."','$m','$y',now())";
			$db->query($sql);
			$sql="";
		}
		if (mysql_errno()) {
			$db->query('rollback');
			$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�����ŵ�","�����ŵ�ʧ�ܣ�".mysql_errno());
			echo "DB_ERROR".mysql_errno();
		} else {
			$db->query('commit');
			$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�����ŵ�","�����ŵ��ɹ���");
			echo "OK";
		}
	}

//�޸��ŵ�
else
	if (isset ($_POST[task]) && "updateStaffJobMore" == $_POST[task]) {
		$db->query('start transaction');
		//$staffcnt = $_POST[staffcnt];
		//�����õ�implode() ��������PHP����ת�ַ���������PHP�explode() ������������ʵ��PHP�ַ���ת����ġ�
		//$text = implode(",", $vegetables);
		//$vegetables = explode(", ", $text);
		$staffcnt = explode("#",$_POST[staffcnt]);
		$m = date( "m" );
		$y = date( "Y" );
		for($i=0;$i<count($staffcnt);$i++){
			$jobprice = getListBySql("select jobprice from jobprice where jobid='".$_POST[jobid]."' and prodid='".$_POST[prodid]."'",$db);
			$info = explode("-",$staffcnt[$i]);
			$sql = "insert into staffjob(staffid,jobpriceid,prodid,orderid,orderlistid,jobid,amount,m_job,y_job,create_date) ".
					"values('".$info[0]."','".$jobprice[0][jobprice]."','".$_POST[prodid]."','".$_POST[oid]."','".$_POST[olid]."','".$_POST[jobid]."','".$info[1]."','$m','$y',now())";
			$db->query($sql);
			$sql="";
		}
		$db->query("delete from staffjob where id='$_POST[sjid]'");
		if (mysql_errno()) {
			$db->query('rollback');
			$db->addLog("CAP14003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�޸�Ա����ҵ","�޸�Ա����ҵʧ�ܣ�".mysql_errno());
			echo "DB_ERROR".mysql_errno();
		} else {
			$db->query('commit');
			$db->addLog("CAP14003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸�Ա����ҵ","�޸�Ա����ҵ�ɹ���");
			echo "OK";
		}
	}
//���ȫ���ŵ�
else if(isset($_GET[task])&&"overAllPd"==$_GET[task]){
	$db->query("update orderitem set pddate = now() where id = '".$_GET[oid]."'");
	$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�����ŵ�","�����ŵ�ȫ����ɣ�");
	echo "<script>alert('�����ŵ�ȫ�����!');location.href='../orderlist.php'</script>";
}
//�ŵ�ʱ��
else if(isset($_POST[task])&&"orderPDdate"==$_POST[task]){
	if (isset ($_POST[itemid]) && !empty ($_POST[itemid])) {
		$db->query("update orderitem set pddate ='".$_POST[sdate]."' where id = '".$_POST[itemid]."'");
		$db->addLog("CAP04009",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�����ŵ�ʱ��","�����ŵ�ʱ��¼��ɹ���");
		echo "<script>alert('�����ŵ�ʱ��¼��ʱ��!');location.href='../orderlist.php'</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');location.href='../pd.php?orderid=$_POST[orderid]'</script>";
	}
}

?>
