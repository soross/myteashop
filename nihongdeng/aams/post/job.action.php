<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addJob"==$_POST[task]){
	$db->query("insert into job(job_name,work_address,job_cnt,job_desc,create_date,job_type,work_exp,work_need,college,link_man,link_phone,link_mail) " .
			"values('$_POST[title]','$_POST[workadd]','$_POST[num]','".replaceContent($_POST[content])."',now(),'$_POST[type]','$_POST[work]','".replaceContent($_POST[content1])."'," .
					"'$_POST[college]','$_POST[link_man]','$_POST[link_phone]','$_POST[link_email]')");
	echo "<script>if(confirm('招聘信息发布成功,是否继续发布?')){location.href='../addjob.php';}else{location.href='../job.php';}</script>";
}

else if(isset($_GET[task]) && "deleteJob"==$_GET[task]){
	$db->query("delete from job where id = '$_GET[jobid]'");
	echo "<script>alert('招聘信息删除成功?');location.href='../job.php';</script>";
}

else if(isset($_GET[task]) && "toUpdateJob"==$_GET[task]){
	echo "<script>location.href='../updatejob.php?jobid=".$_GET[jobid]."';</script>";
}

else if(isset($_POST[task]) && "updateJob"==$_POST[task]){
	$db->query("update job set job_name='$_POST[title]',work_address='$_POST[workadd]',job_cnt='$_POST[num]',job_desc='".replaceContent($_POST[content])."'," .
			"job_type='$_POST[type]',work_exp='$_POST[work]',work_need='".replaceContent($_POST[content1])."',college='$_POST[college]',link_man='$_POST[link_man]'," .
			"link_phone='$_POST[link_phone]',link_mail='$_POST[link_email]' where id='".$_POST[jobid]."'");

	echo "<script>if(confirm('招聘信息修改成功,是否继续修改?')){location.href='../updatejob.php?jobid=".$_POST[jobid]."';}else{location.href='../job.php';}</script>";
}

function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
