<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

	if(isset($_POST[task]) && "addJob"==$_POST[task]){
			$db->query("select * from job where jobname='".$_POST[jobname]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into job(jobname) values('".$_POST[jobname]."')");
				echo "<script>if(confirm('�����ɹ�,�Ƿ��������?')){location.href='../addjob.php';}else{location.href='../joblist.php';}</script>";
			}else{
				echo "<script>alert('�ù����Ѵ���!');location.href='../addjob.php';</script>";
			}
	}else if(isset($_GET[task]) && "updJob"==$_GET[task]){
		if(isset($_GET[id]) && !empty($_GET[id])){
				$db->query("update job set jobname='".$_GET[jobname]."' where id ='".$_GET[id]."'" );
				echo "<script>alert('�޸ĳɹ�!');location.href='../joblist.php';</script>";
		}else{
			echo "<script>alert('�Ƿ�����!".$_GET[id]."');location.href='../joblist.php';</script>";
		}
	}else if(isset($_GET[task]) && "delJob"==$_GET[task]){
		if(isset($_GET[id]) && !empty($_GET[id])){
			$db->query("delete from  job where id ='".$_GET[id]."'" );
			echo "<script>alert('ɾ���ɹ�!');location.href='../joblist.php';</script>";
		}else{
			echo "<script>alert('ɾ��ʧ��!');location.href='../joblist.php';</script>";
		}
	}
?>
