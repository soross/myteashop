<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addYz"==$_POST[task]){
	if(isset($_POST[staffid])&& $_POST[staffid]!="-1" && !empty($_POST[staffid])){
		$m = date( "m" );
		$y = date( "Y" );
		$db->query("insert into yz(staffid,money,m_yz,y_yz,create_date)" .
					"values('$_POST[staffid]','$_POST[money]','$m','$y',now())");
		echo "<script>if(confirm('预支成功,是否继续新增?')){location.href='../addyz.php';}else{location.href='../yzlist.php';}</script>";
	}else{
		echo "<script>alert('预支失败,请选择员工.');location.href='../addyz.php';</script>";
	}
}else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	echo "<script>alert('删除成功?');location.href='../yzlist.php';</script>";
}
?>
