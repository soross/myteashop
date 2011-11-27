<?php
require_once ("../action/mysql.class.php");
if(isset($_POST[task])&&"ajaxCheckNameExtice"==$_POST[task]){
	$username = $_POST[username];
	$query = $db->query("select id from lm_member where mb_name='".$username."'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		echo "ERROR";
	}else{
		echo "OK";
	}
}
?>
