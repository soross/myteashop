<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

	if(isset($_POST[task]) && "addJob"==$_POST[task]){
			$db->query("select * from job where jobname='".$_POST[jobname]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into job(jobname) values('".$_POST[jobname]."')");
				$db->addLog("CAP03001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增工种","新增工种成功!");
				echo "<script>if(confirm('新增成功,是否继续新增?')){location.href='../joblist.php';}else{location.href='../joblist.php';}</script>";
			}else{
				$db->addLog("CAP03001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增工种","该工种已存在!");
				echo "<script>alert('该工种已存在!');location.href='../joblist.php';</script>";
			}
	}else if(isset($_POST) && "updJob"==$_POST[task]){
		if(isset($_POST[id]) && !empty($_POST[id])){
				$db->query("update job set jobname='".$_POST[jobname]."' where id ='".$_POST[id]."'" );
				$db->addLog("CAP03003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改工种","修改工种成功");
				echo "<script>alert('修改成功!');location.href='../joblist.php';</script>";
		}else{
			$db->addLog("CAP03003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","修改工种","修改工种失败");
			echo "<script>alert('修改失败!');location.href='../joblist.php';</script>";
		}
	}else if(isset($_GET[task]) && "delJob"==$_GET[task]){
		if(isset($_GET[id]) && !empty($_GET[id])){
			$db->query("select id from prodjob where jobid='$_GET[id]'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("delete from  job where id ='".$_GET[id]."'" );
				$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除工种","删除工种成功");
				echo "<script>alert('删除成功!');location.href='../joblist.php';</script>";
			}else{
				$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除工种","删除工种失败，该工种已被使用,不能删除");
				echo "<script>alert('删除失败!');location.href='../joblist.php';</script>";
			}
		}else{
			$db->addLog("CAP03002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除工种","删除工种失败");
			echo "<script>alert('删除失败!');location.href='../joblist.php';</script>";
		}
	}
?>
