<?php
require_once("checkLogin.php");
require_once("../../action/mysql.class.php");

if(isset($_GET[mod])&&isset($_GET[caseid])){
	if('del'==$_GET[mod]){
		$db->query("update cust_case set state='-1' where cust_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."' and id='".$_GET['caseid']."'");
		$db->query("insert into cust_case_log(cust_id,case_id,result,create_date) values('".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."','".$_GET['caseid']."','state:0->-1',now())");
		echo "<script>alert('�÷���ɾ���ɹ�!');location.href='../member.php'</script>";
	}else if('sel'==$_GET[mod]){
		$db->query("update cust_case set state='-2' where cust_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."' and id<>'".$_GET['caseid']."'");
		$db->query("update cust_case set state='1' where cust_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."' and id='".$_GET['caseid']."'");
		$db->query("insert into cust_case_log(cust_id,case_id,result,create_date) values('".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."','".$_GET['caseid']."','state:0->1',now())");
		echo "<script>alert('�÷���ѡ��ɹ�!');location.href='../member.php'</script>";
	}else if('act'==$_GET[mod]){
		$db->query("update cust_case set state='0' where state='-1' and cust_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."' and id='".$_GET['caseid']."'");
		$num=$db->db_affected_rows();
		if($num==1){
			$db->query("insert into cust_case_log(cust_id,case_id,result,create_date) values('".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."','".$_GET['caseid']."','state:-1->0',now())");
			echo "<script>alert('�÷�������ɹ�!');location.href='../member.php'</script>";
		}else{
			echo "<script>alert('�÷�����ȷ��,�޷����¼���!');location.href='../member.php'</script>";
		}
	}else{
		echo "<script>alert('�Ƿ�����,����ϵ����Ա!');location.href='../member.php'</script>";
	}
}else{
	echo "<script>alert('����ʧ��,������!');location.href='../member.php'</script>";
}
?>
