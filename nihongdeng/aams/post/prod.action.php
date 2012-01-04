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
		$filename = $up->getNewFileName();

		$db->query("insert into product(product_name,type_id,product_pic,product_desc,create_date,lang) " .
				"values('$_POST[prod_name]','$_POST[type]','$filename','".replaceContent($_POST[content])."',now(),'$_POST[lang]')");

		echo "<script>if(confirm('��Ʒ�����ɹ�,�Ƿ��������?')){location.href='../addprod.php';}else{location.href='../product.php';}</script>";
	}else{
		echo "<script>alert('��Ʒ����ʧ��,������!');location.href='../addprod.php';</script>";
	}
}

else if(isset($_GET[task]) && "deleteProd"==$_GET[task]){
	$db->query("delete from product where id = '$_GET[prodid]'");
	echo "<script>alert('��Ʒɾ���ɹ�?');location.href='../product.php';</script>";
}

else if(isset($_POST[task]) && "updateProd"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/product';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('prod_picture')){
		$filename = $up->getNewFileName();
		unlink("../../images/product/".$_POST[prodpic]);
	}else{
		$filename = $_POST[prodpic];
	}
	//print_r($up->getErrorMsg());

	$db->query("update product set product_name='$_POST[prod_name]',type_id='$_POST[type]'," .
			"product_desc='".replaceContent($_POST[content])."',product_pic='$filename'," .
			"lang='$_POST[lang]' where id='".$_POST[prodid]."'");

	echo "<script>if(confirm('��Ʒ�޸ĳɹ�,�Ƿ��������?')){location.href='../updateprod.php?task=toUpdateProduct&prodid=".$_POST[prodid]."';}else{location.href='../product.php';}</script>";
}



else if(isset($_POST[task]) && "updateProdType"==$_POST[task]){
	$db->query("update product_type set product_type_zh_cn='$_POST[zh_cn]',product_type_en='$_POST[en]' where id='".$_POST[typeid]."'");
	echo "<script>alert('�޸ĳɹ�!');location.href='../prodtype.php';</script>";
}

else if(isset($_POST[task]) && "addProdType"==$_POST[task]){
	$db->query("insert into product_type(product_type_zh_cn,product_type_en,pid,create_date,remark) values('$_POST[zh_cn]','$_POST[en]','$_POST[pid]',now(),'1')");
	echo "<script>alert('��Ӳ�Ʒ���ͳɹ�!');location.href='../prodtype.php';</script>";
}
else if(isset($_GET[task]) && "deleteProdType"==$_GET[task]){
	$db->query("select id from product_type where pid='$_GET[typeid]'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		echo "<script>alert('�޷�ɾ���ò�Ʒ����,����ɾ����������!');location.href='../prodtype.php';</script>";
	}else{
		$db->query("delete from product_type where id = '$_GET[typeid]'");
		echo "<script>alert('ɾ����Ʒ���ͳɹ�!');location.href='../prodtype.php';</script>";
	}
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
