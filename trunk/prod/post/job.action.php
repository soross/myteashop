<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

	if(isset($_POST[task]) && "addJob"==$_POST[task]){
			$db->query("select * from job where jobname='".$_POST[jobname]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into job(jobname) values('".$_POST[jobname]."')");
				$db->addLog("CAP03001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","��������","�������ֳɹ�!");
				echo "<script>if(confirm('�����ɹ�,�Ƿ��������?')){location.href='../joblist.php';}else{location.href='../joblist.php';}</script>";
			}else{
				$db->addLog("CAP03001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","��������","�ù����Ѵ���!");
				echo "<script>alert('�ù����Ѵ���!');location.href='../joblist.php';</script>";
			}
	}else if(isset($_POST) && "updJob"==$_POST[task]){
		if(isset($_POST[id]) && !empty($_POST[id])){
				$db->query("update job set jobname='".$_POST[jobname]."' where id ='".$_POST[id]."'" );
				$db->addLog("CAP03003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸Ĺ���","�޸Ĺ��ֳɹ�");
				echo "<script>alert('�޸ĳɹ�!');location.href='../joblist.php';</script>";
		}else{
			$db->addLog("CAP03003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�޸Ĺ���","�޸Ĺ���ʧ��");
			echo "<script>alert('�޸�ʧ��!');location.href='../joblist.php';</script>";
		}
	}else if(isset($_GET[task]) && "delJob"==$_GET[task]){
		if(isset($_GET[id]) && !empty($_GET[id])){
			$db->query("select id from prodjob where jobid='$_GET[id]'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("delete from  job where id ='".$_GET[id]."'" );
				$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ɾ������","ɾ�����ֳɹ�");
				echo "<script>alert('ɾ���ɹ�!');location.href='../joblist.php';</script>";
			}else{
				$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ������","ɾ������ʧ�ܣ��ù����ѱ�ʹ��,����ɾ��");
				echo "<script>alert('ɾ��ʧ��!');location.href='../joblist.php';</script>";
			}
		}else{
			$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ������","ɾ������ʧ��");
			echo "<script>alert('ɾ��ʧ��!');location.href='../joblist.php';</script>";
		}
	}
?>
