<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

if(isset($_POST[task]) && "adddlly"==$_POST[task]){
	if(isset($_POST[yxqds])&& !empty($_POST[yxqds])){
	$db->query("insert into dlzxly(jlqysf,jlqycs,yxqd,dwgrmz,sf,lxr,lxdh,lxdz,lxqq,dzyx,lynr,create_date,jlqyqu) values('$_POST[jlqysf]','$_POST[jlqycs]','$_POST[yxqds]','$_POST[dwgrmz]','$_POST[sf]','$_POST[lxr]','$_POST[lxdh]','$_POST[lxdz]','$_POST[lxqq]','$_POST[dzyx]','".addslashes($_POST[lynr])."',now(),'$_POST[jlqyqu]')");
	echo "<script>alert('发送留言成功');location.href='agent.php';</script>";
	}
	else{
	$db->query("insert into dlzxly(jlqysf,jlqycs,yxqd,dwgrmz,sf,lxr,lxdh,lxdz,lxqq,dzyx,lynr,create_date,jlqyqu) values('$_POST[jlqysf]','$_POST[jlqycs]','$_POST[yxqd]','$_POST[dwgrmz]','$_POST[sf]','$_POST[lxr]','$_POST[lxdh]','$_POST[lxdz]','$_POST[lxqq]','$_POST[dzyx]','".addslashes($_POST[lynr])."',now(),'$_POST[jlqyqu]')");
	echo "<script>alert('发送留言成功');location.href='agent.php';</script>";
	}

}
?>
