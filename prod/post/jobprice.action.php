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
			$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�������ּ۸�","�������ּ۸�ɹ�!");
			echo "<script>if(confirm('�����ɹ�,�Ƿ��������?')){location.href='../addjobprice.php';}else{location.href='../jobpricelist.php';}</script>";
		}else{
			$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�������ּ۸�","�ò�Ʒ���ּ۸����!");
			echo "<script>alert('�ò�Ʒ���ּ۸����!');location.href='../addjobprice.php';</script>";
		}
	}else{
		$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�������ּ۸�","��ѡ���Ʒ���ź͹���!");
		echo "<script>alert('��ѡ���Ʒ���ź͹���!');location.href='../addjobprice.php';</script>";
	}
}else if(isset($_GET[task]) && "delJobprice"==$_GET[task]){
	$db->query("delete from jobprice where id = '$_GET[del_id]'");
	$db->addLog("CAP12001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ�����ּ۸�","ɾ�����ּ۸�ɹ�!");
	echo "<script>alert('ɾ���ɹ�?');location.href='../jobpricelist.php';</script>";
}



?>
