<?php
	require_once("../action/checkAamsLogin.php");
	require_once("../action/mysql.class.php");
	if(isset($_POST[task]) && "addGw"==$_POST[task]){
		$db->query("select * from gw where gwname='".$_POST[gwname]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query("insert into gw(gwname)" .
            "values('$_POST[gwname]')");
			$db->addLog("CAP06001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","������λ","������λ�ɹ�!");
			echo "<script>if(confirm('��λ���ɹ�,�Ƿ��������?')){location.href='../addgw.php';}else{location.href='../gwlist.php';}</script>";
		}else{
			$db->addLog("CAP06001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","������λ","�ø�λ�Ѵ���!");
			echo "<script>alert('�ø�λ�Ѵ���!');location.href='../addgw.php';</script>";
		}
	}else if(isset($_GET[task]) && "delGw"==$_GET[task]){
		$db->query("delete from gw where gwid = '$_GET[gwid]'");
		$db->addLog("CAP06002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ɾ����λ","ɾ����λ�ɹ�!");
		echo "<script>alert('ɾ���ɹ�?');location.href='../gwlist.php';</script>";
	}
?>
