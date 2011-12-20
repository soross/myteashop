<?php
	session_start();

	if(isset($_POST['task']) &&'formSendMessage'==$_POST['task']){
		include_once("../action/mysql.class.php");
		$db->query("insert into message(`title`,`content`,`cust_name`,`link_man`,`phone`,`msn`,`create_date`,`type`) " .
				"values('$_POST[title]','$_POST[content]','$_POST[company]','$_POST[name]','$_POST[tel]','$_POST[qq]',now(),'MESSAGE')");
		$cnt = $db->db_affected_rows();
		if($cnt>0){
			echo "OK";
		}else{
			$clang = $_POST['lang'];
			if("en"==$clang){
				echo "Subimit Error,Please try again!";
			}else{
				echo "留言失败,请重试!";
			}
		}
	}else if(isset($_POST['task']) &&'formSendAdvise'==$_POST['task']){
		include_once("../action/mysql.class.php");
		$db->query("insert into message(`cust_name`,`phone`,`link_man`,`address`,`msn`,`content`,`create_date`,`type`) " .
				"values('$_POST[company]','$_POST[tel]','$_POST[title]','$_POST[address]','$_POST[qq]','$_POST[content]',now(),'ADVISE')");
		$cnt = $db->db_affected_rows();
		if($cnt>0){
			echo "OK";
		}else{
			$clang = $_POST['lang'];
			if("en"==$clang){
				echo "Subimit Error,Please try again!";
			}else{
				echo "投诉建议提交失败,请重试!";
			}
		}
	}else{
		echo "非法提交!";
	}
?>
