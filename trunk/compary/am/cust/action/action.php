<?php
require_once("../../action/global_post.php");
//�����ͻ�
if(isset($_POST[task])&&"addCust"==$_POST[task]){
	$sql = "insert into cust(cust_name,password,address,zip_code,create_date,mobile,phone,compary) " .
			"values('$_POST[cust_name]','".md5($_POST[cust_pass])."','$_POST[address]','$_POST[zip_code]',now(),'$_POST[mobile]','$_POST[phone]','$_POST[compary]')";
	$db->query($sql);
	echo "<script>location.href='../custadd.php'</script>";
}
//�ͻ��������ȸ���
else if(isset($_POST[task])&&"updateCustCasePlan"==$_POST[task]){
	$db->query("update cust_case set case_plan='$_POST[case_plan]' where id='$_POST[cust_case_id]'");
	echo "<script>location.href='../custcaselist.php'</script>";
}
//��ӿͻ�����
else if(isset($_POST[task])&&"addCustCase"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require_once("../../action/fileUpload.php");
	//�����������ݵ����ݿ�
	$sql = "insert into cust_case(cust_id,case_name,case_picture,state,case_plan,create_date)".
	"values('$_POST[custid]','$_POST[case_name]','../product/images/".$fname."','0','10',now())";
	$db->query($sql);
	echo "<script>if(confirm('�Ƿ������ӿͻ�����?')){location.href='../custcaseadd.php';}else{location.href='../custcaselist.php';}</script>";
}

//ɾ������task=deleteCustCase&id=4&path=../product/images/prod_001.jpg&page=1
else if(isset($_GET[task])&&"deleteCustCase"==$_GET[task]){
	unlink("../../".$_GET[path]);
	$db->query("delete from cust_case where id='$_GET[id]'");
	echo "<script>location.href='../custcaselist.php?page=$_GET[page]'</script>";
}
?>
