<?php
	session_start();
	include("dbconnect.inc.php");
	include("functions.inc.php");
	$form = check_form($_POST["edit"]);
	$username = $form["name"];
	$password = md5($form["pass"]);
	$sql = "select  *  from users where username='{$username}'  limit 1 ";
	
	$res = mysql_query($sql);
	$row = mysql_fetch_array($res);
	if(!$password == $row["password"]) {
		header("Location:msg.php?m=login_error");
		exit;
	}
	
	$_SESSION["userid"] = $row["id"];
	$_SESSION["mail"] = $row["mail"];
	$_SESSION["username"] = $username;
	header("Location:account.php");
?>