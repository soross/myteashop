<?php
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addMsg"==$_POST[task]){
	if(isset($_POST[t]) && !empty($_POST[t])){
		if(strlen($_POST[t])>50){
			echo "<script>alert('【留言主题】长度不能大于50个字符!');location.href='../msg.php';</script>";
			exit;
		}
		if(isset($_POST['link']) && !empty($_POST['link'])){
			if(strlen($_POST[link])>50){
				echo "<script>alert('【联系方式】长度不能大于50个字符!');location.href='../msg.php';</script>";
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
				echo "<script>alert('留言提交成功');location.href='../msg.php';</script>";
			}else{
				echo "<script>alert('请填写【详细内容】');location.href='../msg.php';</script>";
			}
		}else{
			echo "<script>alert('请填写【联系方式】');location.href='../msg.php';</script>";
		}
	}else{
		echo "<script>alert('请填写【留言主题】');location.href='../msg.php';</script>";
	}
}else{
	echo "<script>alert('非法提交!');location.href='../msg.php';</script>";
}

?>
