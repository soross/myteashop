<?php
require_once("../../action/global_post.php");
if(isset($_POST[task]) && "addLink"==$_POST[task] ){
	$db->query("insert into link(link_name,link_url,create_date) values('$_POST[link_name]','$_POST[link_url]',now())");
	echo "<script>alert('添加友链成功!');location.href='../link.php';</script>";
}

else if(isset($_POST[task]) && "updateLink"==$_POST[task] ){
	$db->query("update link set link_name='$_POST[link_name]',link_url='$_POST[link_url]' where id='$_POST[id]'");
	echo "<script>alert('修改友链成功!');location.href='../link.php';</script>";
}
else if(isset($_GET[task]) && "deleteLink"==$_GET[task] ){
	$db->query("delete from link where id='".$_GET[id]."'")	;
	echo "<script>alert('删除友链成功!');location.href='../link.php';</script>";
}
?>
