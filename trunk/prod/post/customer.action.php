<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addCustomer"==$_POST[task]){
	$db->query("select * from customer where custname='".$_POST[custname]."'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$db->query("insert into customer(custid,custname,linkman,tell,yhy,yhytell,bz,create_date)" .
				"values('$_POST[custid]','$_POST[custname]','$_POST[linkman]','$_POST[tell]','$_POST[yhy]','$_POST[yhytell]','$_POST[bz]',now())");
		$db->addLog("CAP09001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�����ͻ�","�����ͻ��ɹ�!");
		echo "<script>if(confirm('�ͻ������ɹ�,�Ƿ��������?')){location.href='../addcustomer.php';}else{location.href='../customerlist.php';}</script>";
	}else{
		$db->addLog("CAP09001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�����ͻ�","�ÿͻ��Ѵ���!");
		echo "<script>alert('�ÿͻ��Ѵ���!');location.href='../addcustomer.php';</script>";
	}
}else if(isset($_GET[task]) && "delCustomer"==$_GET[task]){
	$db->query("delete from customer where id = '$_GET[c_id]'");
	$db->addLog("CAP09002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ɾ���ͻ�","�ͻ�ɾ���ɹ�!");
	echo "<script>alert('�ͻ�ɾ���ɹ���');location.href='../customerlist.php';</script>";
}else if(isset($_POST[task]) && "updCustomer"==$_POST[task]){

		$db->query("update customer set custid='$_POST[custid]',custname='$_POST[custname]',linkman='$_POST[linkman]',tell='$_POST[tell]'," .
				"yhy='$_POST[yhy]',yhytell='$_POST[yhytell]',bz='$_POST[bz]' where id='$_POST[id]'");
		$db->addLog("CAP09003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸Ŀͻ�","�ͻ��޸ĳɹ�!");
		echo "<script>if(confirm('�ͻ��޸ĳɹ�,�Ƿ��������?')){location.href='../updcustomer.php?c_id=$_POST[id]';}else{location.href='../customerlist.php';}</script>";
}



?>
