<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addYz"==$_POST[task]){
	if(isset($_POST[staffid])&& $_POST[staffid]!="-1" && !empty($_POST[staffid])){
		$m = date( "m" );
		$y = date( "Y" );
		$db->query("insert into yz(staffid,money,m_yz,y_yz,create_date)" .
					"values('$_POST[staffid]','$_POST[money]','$m','$y',now())");
		$db->addLog("CAP13001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","����Ԥ֧","Ԥ֧�ɹ�!");
		echo "<script>if(confirm('Ԥ֧�ɹ�,�Ƿ��������?')){location.href='../addyz.php';}else{location.href='../yzlist.php';}</script>";
	}else{
		$db->addLog("CAP13001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","����Ԥ֧","Ԥ֧ʧ��,��ѡ��Ա����");
		echo "<script>alert('Ԥ֧ʧ��,��ѡ��Ա����');location.href='../addyz.php';</script>";
	}
}else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	$db->addLog("CAP13002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ��Ԥ֧","ɾ��Ԥ֧�ɹ���");
	echo "<script>alert('ɾ���ɹ�?');location.href='../yzlist.php';</script>";
}
?>
