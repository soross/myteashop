<?php
	require_once("../action/checkAamsLogin.php");
	require_once("../action/mysql.class.php");
	if(isset($_POST[task]) && "addGw"==$_POST[task]){
		$db->query("select * from gw where gwname='".$_POST[gwname]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query("insert into gw(gwname)" .
            "values('$_POST[gwname]')");
			$db->addLog("CAP06001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增岗位","新增岗位成功!");
			echo "<script>if(confirm('岗位增成功,是否继续新增?')){location.href='../addgw.php';}else{location.href='../gwlist.php';}</script>";
		}else{
			$db->addLog("CAP06001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增岗位","该岗位已存在!");
			echo "<script>alert('该岗位已存在!');location.href='../addgw.php';</script>";
		}
	}else if(isset($_GET[task]) && "delGw"==$_GET[task]){
		$db->query("delete from gw where gwid = '$_GET[gwid]'");
		$db->addLog("CAP06002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除岗位","删除岗位成功!");
		echo "<script>alert('删除成功?');location.href='../gwlist.php';</script>";
	}
?>
