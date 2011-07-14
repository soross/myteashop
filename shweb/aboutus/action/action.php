<?php
header('Content-Type: text/html; charset=gbk');
session_start();
if($_POST[m_code] == $_SESSION[validationcode]){
	require_once("../../action/mysql.class.php");
	$db->query("insert into message(title,cust_name,email,phone,city,content,create_date,address,fax) " .
			" values('$_POST[m_title]','$_POST[m_name]','$_POST[m_email]','$_POST[m_tel]','$_POST[m_city]','$_POST[m_text]',now(),'$_POST[m_addr]','$_POST[m_fax]')");
	echo "<script>if(confirm('信息反馈成功,是否继续反馈信息!')){location.href='../message.php';}else{location.href='../../index.php'}</script>";
}else{
	echo "<script>alert('验证码错误,请重试!');location.href='../message.php'</script>";
}
?>
