<?php
	require_once("../action/checkAamsLogin.php");
	require_once("../action/mysql.class.php");
	if(isset($_POST[task]) && "addGw"==$_POST[task]){
		$db->query("select * from gw where gwname='".$_POST[gwname]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query("insert into gw(gwname)" .
					"values('$_POST[gwname]')");
			echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addgw.php';}else{location.href='../gwlist.php';}</script>";
		}else{
			echo "<script>alert('�ÿͻ��Ѵ���!');location.href='../addgw.php';</script>";
		}
	}else if(isset($_GET[task]) && "delGw"==$_GET[task]){
		$db->query("delete from gw where gwid = '$_GET[gwid]'");
		echo "<script>alert('ɾ���ɹ�?');location.href='../gwlist.php';</script>";
	}
?>
