<?php
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addMsg"==$_POST[task]){
	if(isset($_POST[t]) && !empty($_POST[t])){
		if(strlen($_POST[t])>50){
			echo "<script>alert('���������⡿���Ȳ��ܴ���50���ַ�!');location.href='../msg.php';</script>";
			exit;
		}
		if(isset($_POST['link']) && !empty($_POST['link'])){
			if(strlen($_POST[link])>50){
				echo "<script>alert('����ϵ��ʽ�����Ȳ��ܴ���50���ַ�!');location.href='../msg.php';</script>";
				exit;
			}
			if(isset($_POST[flag]) && !empty($_POST[flag])){
				$flag=$_POST[flag];
			}else{
				$flag="content";
			}
			if(isset($_POST[$flag]) && !empty($_POST[$flag])){
				$content = $_POST[$flag];
				$db->query("insert into message(title,content,link,create_date) values('$_POST[t]','".replace($content)."','$_POST[link]',now())");
				echo "<script>alert('�����ύ�ɹ�');location.href='../msg.php';</script>";
			}else{
				echo "<script>alert('����д����ϸ���ݡ�');location.href='../msg.php';</script>";
			}
		}else{
			echo "<script>alert('����д����ϵ��ʽ��');location.href='../msg.php';</script>";
		}
	}else{
		echo "<script>alert('����д���������⡿');location.href='../msg.php';</script>";
	}
}else{
	echo "<script>alert('�Ƿ��ύ!');location.href='../msg.php';</script>";
}

?>
