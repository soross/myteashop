<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addYz"==$_POST[task]){
	$db->query("insert into yz(staffid,money,m_yz,y_yz,create_date)" .
				"values('$_POST[staffid]','$_POST[money]','$_POST[m_yz]','$_POST[y_yz]',now())");
	echo "<script>if(confirm('�����ɹ�,�Ƿ��������?')){location.href='../addyz.php';}else{location.href='../yzlist.php';}</script>";
}else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	echo "<script>alert('ɾ���ɹ�?');location.href='../yzlist.php';</script>";
}
?>
