<?php
require_once("../../action/global_post.php");
//echo "file upload....".$_POST[task]."...".$_GET[page];

//��Ӳ�Ʒ
if(isset($_POST[task])&&"addProduct"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require_once("../../action/fileUpload.php");

	//�����������ݵ����ݿ�
	$sql = "insert into prod(prod_name,prod_code,prod_desc,prod_class,create_date,prod_picture,state)".
	"values('$_POST[prod_name]','$_POST[prod_code]','$_POST[prodDesc]','$_POST[prod_class]',now(),'$fname','$_POST[prod_url]')";
	$db->query($sql);

	echo "<script>if(confirm('��Ʒ��ӳɹ�,�Ƿ������Ӳ�Ʒ?')){location.href='../prodadd.php';}else{location.href='../prodlist.php'}</script>";
}
//ɾ����Ʒ
else if(isset($_GET[task])&&"deleteProd"==$_GET[task]){
	unlink("../../../images/".$_GET[path]);
	$db->query("delete from prod where id='".$_GET[id]."'");
	echo "<script>alert('��Ʒɾ���ɹ�,�����ز�Ʒ�б�!');location.href='../prodlist.php?page=$_GET[page]';</script>";
}

//�޸Ĳ�Ʒ��Ϣ
else if(isset($_POST[task])&&"editProduct"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require_once("../../action/fileUpload.php");

	$sql = "update prod set prod_name='$_POST[prod_name]',prod_code='$_POST[prod_code]', prod_desc='$_POST[prodDesc]',prod_class='$_POST[prod_class]',";
	//echo "====dddd==".$failed;
	if("ERROR"!==$failed && $fname !=="nopic.jpg"){
		$sql.=" prod_picture='$fname', ";
		unlink("../../../images/".$_POST[path]);
	}
	$sql.= "state='$_POST[prod_url]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('��Ʒ�޸ĳɹ�,�Ƿ�����޸Ĳ�Ʒ��Ϣ?')){location.href='../prodedit.php?page=$_POST[page]&id=$_POST[id]&task=editProd';}else{location.href='../prodlist.php?page=$_POST[page]'}</script>";
}
//��Ӳ�Ʒ����
else if(isset($_POST[task])&&"addProdClass"==$_POST[task]){
	$sql = "insert into prod_class(class_name,create_date) values('$_POST[class_name]',now())";
	$db->query($sql);
	echo "<script>alert('��Ʒ������ӳɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php'</script>";
}
//���²�Ʒ����
else if(isset($_POST[task])&&"updateProdClass"==$_POST[task]){
	$db->query("update prod_class set class_name='$_POST[class_name]' where id='".$_POST[id]."'");
	echo "<script>alert('��Ʒ�����޸ĳɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php';</script>";
}
//ɾ����Ʒ����
else if(isset($_GET[task])&&"deleteProdClass"==$_GET[task]){
	$db->query("delete from prod_class where id='".$_GET[id]."'");
	echo "<script>alert('��Ʒ����ɾ���ɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php';</script>";
}

?>
