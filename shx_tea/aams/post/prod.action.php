<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addProd"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/product/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('prod_pic')){
		$filename = "images/product/".$up->getNewFileName();

		$db->query("insert into prod(prod_name,type_id,prod_pic,net_weight,prod_desc,state,cheap_desc,create_date) " .
				"values('$_POST[prod_name]','$_POST[type]','$filename','$_POST[net_weight]','".replaceContent($_POST[content])."','$_POST[state]','$_POST[cheap_desc]',now())");

		echo "<script>if(confirm('��Ʒ�����ɹ�,�Ƿ��������?')){location.href='../addprod.php';}else{location.href='../product.php';}</script>";
	}else{
		echo "<script>alert('��Ʒ����ʧ��,������!');location.href='../addprod.php';</script>";
	}
}

else if(isset($_GET[task]) && "deleteProd"==$_GET[task]){
	$db->query("delete from prod where id = '$_GET[prodid]'");
	unlink("../../".$_GET[path]);
	echo "<script>alert('��Ʒɾ���ɹ�?');location.href='../product.php';</script>";
}

else if(isset($_POST[task]) && "updateProd"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/product';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('prod_pic')){
		$filename = "images/product/".$up->getNewFileName();
		unlink("../../".$_POST[prodpic]);
	}else{
		$filename = $_POST[prodpic];
	}

	$db->query("update prod set prod_name='$_POST[prod_name]',type_id='$_POST[type]',net_weight='$_POST[net_weight]'," .
			"prod_desc='".replaceContent($_POST[content])."',prod_pic='$filename',state='$_POST[state]'," .
			"cheap_desc='$_POST[cheap_desc]' where id='".$_POST[prodid]."'");

	echo "<script>if(confirm('��Ʒ�޸ĳɹ�,�Ƿ��������?')){location.href='../updateprod.php?task=toUpdateProduct&prodid=".$_POST[prodid]."';}else{location.href='../product.php';}</script>";
}






else if(isset($_POST[task]) && "updateProdType"==$_POST[task]){
	$db->query("update prod_type set type_name='$_POST[type_name]',seq='$_POST[seq]' where id='".$_POST[typeid]."'");
	echo "<script>alert('��Ʒ�����޸ĳɹ�!');location.href='../prodtype.php';</script>";
}
else if(isset($_POST[task]) && "addProdType"==$_POST[task]){
	$db->query("insert into prod_type(type_name,seq) values('$_POST[type_name]','$_POST[seq]')");
	echo "<script>alert('��Ӳ�Ʒ���ͳɹ�!');location.href='../prodtype.php';</script>";
}
else if(isset($_GET[task]) && "deleteProdType"==$_GET[task]){
	$db->query("delete from prod_type where id = '$_GET[typeid]'");
	echo "<script>alert('ɾ����Ʒ���ͳɹ�!');location.href='../prodtype.php';</script>";
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
