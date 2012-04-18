<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addJobprice"==$_POST[task]){
	if(isset($_POST[prodid])&& $_POST[prodid]!="-1" && !empty($_POST[prodid])&&isset($_POST[jobid])&& $_POST[jobid]!="-1" && !empty($_POST[jobid])){
		$db->query("select * from jobprice where prodid='".$_POST[prodid]."' and jobid='".$_POST[jobid]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query("insert into jobprice(jobid,prodid,jobprice,create_date)" .
					"values('$_POST[jobid]','$_POST[prodid]','$_POST[jobprice]',now())");
			$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增工种价格","新增工种价格成功!");
			echo "<script>if(confirm('新增成功,是否继续新增?')){location.href='../addjobprice.php';}else{location.href='../jobpricelist.php';}</script>";
		}else{
			$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增工种价格","该产品工种价格存在!");
			echo "<script>alert('该产品工种价格存在!');location.href='../addjobprice.php';</script>";
		}
	}else{
		$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增工种价格","请选择产品货号和工种!");
		echo "<script>alert('请选择产品货号和工种!');location.href='../addjobprice.php';</script>";
	}
}else if(isset($_GET[task]) && "delJobprice"==$_GET[task]){
	$db->query("delete from jobprice where id = '$_GET[del_id]'");
	$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除工种价格","删除工种价格成功!");
	echo "<script>alert('删除成功?');location.href='../jobpricelist.php';</script>";
}



?>
