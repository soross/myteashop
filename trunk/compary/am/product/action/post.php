<?php
require_once("../../action/global_post.php");
//echo "file upload....".$_POST[task]."...".$_GET[page];

//��Ӳ�Ʒ
if(isset($_POST[task])&&"addProduct"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require_once("../../action/fileUpload.php");

	//�����������ݵ����ݿ�
	$sql = "insert into prod(prod_name,prod_desc,prod_class,create_date,prod_picture,state,prod_link,compary)".
	"values('$_POST[prod_name]','$_POST[prodDesc]','$_POST[prod_class]',now(),'$fname','$_POST[prod_url]','$_POST[prod_link]','$_POST[compary]')";
	$db->query($sql);

	//�����ֶ�
	$prodId = $db->insert_id();
	$prodUrl = $_POST[prod_url]==1?"dome/".$prodId."/index.html":NULL;
	$prodCode = getProdCode($db,$_POST[prod_class],$prodId);
	$updateSql = "update prod set prod_code='".$prodCode."',prod_info_url='product_".$prodId."_info.html',case_info_url='case_".$prodId."_info.html',prod_url='".$prodUrl."' where id='".$prodId."'";
	$db->query($updateSql);
	echo "<script>if(confirm('��Ʒ��ӳɹ�,�Ƿ������Ӳ�Ʒ?')){location.href='../prodadd.php';}else{location.href='../prodlist.php'}</script>";
}
//ɾ����Ʒ
else if(isset($_GET[task])&&"deleteProd"==$_GET[task]){
	unlink("../../../product/images/".$_GET[path]);
	$db->query("delete from prod where id='".$_GET[id]."'");
	echo "<script>alert('��Ʒɾ���ɹ�,�����ز�Ʒ�б�!');location.href='../prodlist.php?page=$_GET[page]';</script>";
}

//�޸Ĳ�Ʒ��Ϣ
else if(isset($_POST[task])&&"editProduct"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require_once("../../action/fileUpload.php");
	//���±���
	$prodCode = getProdCode($db,$_POST[prod_class],$_POST[id]);

	$sql = "update prod set prod_name='$_POST[prod_name]',prod_code='$prodCode', prod_desc='$_POST[prodDesc]',prod_class='$_POST[prod_class]',";
	if("ERROR"!=$failed){
		$sql.=" prod_picture='$fname', ";
		unlink("../../../product/images/".$_POST[path]);
	}
	$sql.= "state='$_POST[state]',prod_link='$_POST[prod_link]',compary='$_POST[compary]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('��Ʒ�޸ĳɹ�,�Ƿ�����޸Ĳ�Ʒ��Ϣ?')){location.href='../prodedit.php?page=$_POST[page]&id=$_POST[id]&task=editProd';}else{location.href='../prodlist.php?page=$_POST[page]'}</script>";
}
//��Ӳ�Ʒ����
else if(isset($_POST[task])&&"addProdClass"==$_POST[task]){
	$sql = "insert into prod_class(class_name,ename,full_ename,create_date) values('$_POST[class_name]','$_POST[ename]','$_POST[full_ename]',now())";
	$db->query($sql);
	$prodClassId = $db->insert_id();
	$db->query("update prod_class set url='prodlist.php?classcode=".$prodClassId."' where id='".$prodClassId."'");
	echo "<script>alert('��Ʒ������ӳɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php'</script>";
}
//���²�Ʒ����
else if(isset($_POST[task])&&"updateProdClass"==$_POST[task]){
	$db->query("update prod_class set class_name='$_POST[class_name]',ename='$_POST[ename]',full_ename='$_POST[full_ename]' where id='".$_POST[id]."'");
	echo "<script>alert('��Ʒ�����޸ĳɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php';</script>";
}
//ɾ����Ʒ����
else if(isset($_GET[task])&&"deleteProdClass"==$_GET[task]){
	$db->query("delete from prod_class where id='".$_GET[id]."'");
	echo "<script>alert('��Ʒ����ɾ���ɹ�,�����ز�Ʒ�����б�!');location.href='../prodclass.php';</script>";
}

?>
