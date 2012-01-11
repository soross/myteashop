<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteNav"==$_GET[task]){
	$query = $db->query("select id from menu where pid = '$_GET[navid]'");
	$cnt = $db->db_num_rows($query);
	if($cnt<1){
 	$db->query("delete from menu where id='$_GET[navid]'");
 	echo "<script>alert('删除成功!');location.href='../nav.php';</script>";
	}else{
	echo "<script>alert('父类菜单不能删除!');location.href='../nav.php';</script>";
	}

}else if(isset($_POST[task]) && "updateNav"==$_POST[task]){
	$db->query("update menu set menu_name_zh_cn='$_POST[name_cn]',menu_name_en='$_POST[name_en]',pid='$_POST[type]',`show`='$_POST[show]',remark='$_POST[remark]',url='$_POST[url]' where id='$_POST[navid]'");
	echo "<script>if(confirm('更新成功,是否继续更新?')){location.href='../editnav.php?task=toUpdateNav&navid=$_POST[navid]';}else{location.href='../nav.php';}</script>";

}else if(isset($_POST[task]) && "addNav"==$_POST[task]){
	$db->query("insert into menu(menu_name_zh_cn,menu_name_en,pid,remark,`show`,url) values('$_POST[name_cn]','$_POST[name_en]','$_POST[type]','$_POST[remark]','$_POST[show]','$_POST[url]')");
	echo "<script>if(confirm('增加成功,是否继续增加?')){location.href='../addnav.php';}else{location.href='../nav.php';}</script>";
}
?>
