<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addYz"==$_POST[task]){
	if(isset($_POST[staffid])&& $_POST[staffid]!="-1" && !empty($_POST[staffid])){
		$m = date( "m" );
		$y = date( "Y" );
		$db->query("insert into yz(staffid,money,m_yz,y_yz,create_date)" .
					"values('$_POST[staffid]','$_POST[money]','$m','$y',now())");
		$db->addLog("CAP13001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增预支","预支成功!");
		echo "<script>if(confirm('预支成功,是否继续新增?')){location.href='../addyz.php';}else{location.href='../yzlist.php';}</script>";
	}else{
		$db->addLog("CAP13001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增预支","预支失败,请选择员工！");
		echo "<script>alert('预支失败,请选择员工！');location.href='../addyz.php';</script>";
	}
}else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	$db->addLog("CAP13002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除预支","删除预支成功！");
	echo "<script>alert('删除成功?');location.href='../yzlist.php';</script>";
}
?>
