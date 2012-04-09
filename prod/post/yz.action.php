<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addYz"==$_POST[task]){
	$db->query("insert into yz(staffid,money,m_yz,y_yz,create_date)" .
				"values('$_POST[staffid]','$_POST[money]','$_POST[m_yz]','$_POST[y_yz]',now())");
	echo "<script>if(confirm('新增成功,是否继续新增?')){location.href='../addyz.php';}else{location.href='../yzlist.php';}</script>";
}else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	echo "<script>alert('删除成功?');location.href='../yzlist.php';</script>";
}
?>
