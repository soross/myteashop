<?php
$code = $_POST["code"];
session_start();
$randcode = $_SESSION['validationcode'];

if($code == $randcode){
	require_once('../db/conn.php');
	$sql = "insert into message(username,title,link,email,is_flag,create_date,content)".
		"values('".$_POST[username]."','".$_POST[title]."','".$_POST[phone]."','".$_POST[email]."','0',now(),'".htmtocode($_POST[content])."')";
	if(mysql_query($sql,$conn)){
		mysql_close($conn);
		echo "<script>alert('��ϲ��,�������Գɹ���,лл���ı�����,���ǽ���һʱ��������ϵ��');location.href='service.php';</script>";
	}else{
		 die('Error:' . mysql_error());
		 mysql_close($conn);
		 echo "<script>alert('�ǳ���Ǹ,��������ʧ����,��Ϊ����ϵͳ����,��ͨ��������ʽ��ϵ����,лл��');location.href='service.php';</script>";
	}
}else{
	echo "<script>alert('�ǳ���Ǹ,��������ʧ����,��Ϊ����֤�������');location.href='service.php';</script>";
}
?>
