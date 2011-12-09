<?php
//name='act' value='addLink'
if(isset($_POST[act]) &&"addLink"==$_POST[act]){
	if($_POST[imgCode] == $_SESSION[validationcode]){
		if(isset($_POST[keyword]) && !empty($_POST[keyword])&&isset($_POST[url]) && !empty($_POST[url])){
			require_once("../../action/mysql.class.php");
			$db->query("insert into link(link_name,link_url,remark) values('$_POST[keyword]','$_POST[url]','$_POST[qq]')");
			echo "<script>if(confirm('添加成功!是否继续添加?')){location.href='../addlink.php';}else{location.href='../link.php';}</script>";
		}else{
			echo "<script>alert('关键字和网址不为空!');location.href='../addlink.php';</script>";
		}
	}else{
		echo "<script>alert('验证码错误!');location.href='../addlink.php';</script>";
	}
}
?>
