<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteNav"==$_GET[task]){
 	$db->query("delete from menu where id='$_GET[navid]'");
 	echo "<script>alert('删除成功!');location.href='../nav.php';</script>";

}else if(isset($_POST[task]) && "updateNav"==$_POST[task]){
	$db->query("update menu set menu_name_zh_cn='$_POST[zh_cn]',menu_name_en='$_POST[en]' where id='$_POST[navid]'");
	echo "<script>alert('更新成功!');location.href='../nav.php';</script>";

}

?>
