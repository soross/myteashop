<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_GET[task]) && "deleteProd"==$_GET[task]){
	$db->query("delete from product where id = '$_GET[prodid]'");
	echo "<script>alert('��Ʒɾ���ɹ�?');location.href='../product.php';</script>";
}

else if(isset($_POST[task]) && "addProd"== $_POST[task]){
		//�ļ�����Ŀ¼URL
	$save_path = '../../images/product/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('prod_pic')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename = "images/product/".$up->getNewFileName();
		$db->query("insert into product(prod_name,prod_pic,price,vip_price,type_id,prod_desc,prod_use,ingredients,create_date,remark,lang,prod_No) values('$_POST[prod_name]','$filename',null,null,'$_POST[type]','".addslashes($_POST[content])."','".addslashes($_POST[content2])."','".addslashes($_POST[content3])."',now(),'','$_POST[lang]','$_POST[prod_No]')");

		echo "<script>alert('���Ӳ�Ʒ�ɹ�');location.href='../product.php';</script>";
	}else{
		echo "<script>alert('���Ӳ�Ʒʧ��');location.href='../addprod.php';</script>";
	}


}else if(isset($_POST[task]) && "udpateProd"== $_POST[task]){

	//�ļ�����Ŀ¼URL
	$save_path = '../../images/product/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('prod_pic')){
	$query = $db->query("select prod_pic,type_id from product where id='$_POST[prod_id]'");
	$info= $db->fetch_array($query);
	$filename = "images/product/".$up->getNewFileName();
	$db->query("update product set prod_name='$_POST[prod_name]',prod_pic='$filename',type_id='$_POST[type]',prod_desc='".addslashes($_POST[content])."',prod_use='".addslashes($_POST[content2])."',ingredients='".addslashes($_POST[content3])."',lang='$_POST[lang]',prod_No='$_POST[prod_No]' where id='$_POST[prod_id]'");
	unlink("../../".$info[prod_pic]);
	   echo "<script>alert('�޸ĳɹ�!');location.href='../product.php';</script>";
	}else{
	$db->query("update product set prod_name='$_POST[prod_name]',type_id='$_POST[type]',prod_desc='".addslashes($_POST[content])."',prod_use='".addslashes($_POST[content2])."',ingredients='".addslashes($_POST[content3])."',lang='$_POST[lang]',prod_No='$_POST[prod_No]' where id='$_POST[prod_id]'");
	echo "<script>alert('ͼƬ�޸�ʧ�ܻ���ͼƬû���޸�,���������Ϣ�޸ĳɹ�!');location.href='../product.php';</script>";
}
}
else if(isset($_POST[task]) && "alldelPord"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //���ո�ѡ���ֵ   Ϊ����
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from product where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('ɾ���ɹ���');location.href='../product.php';</script>");
}else{
echo("<script type='text/javascript'>alert('ɾ���ɹ�ʧ�ģ�');location.href='../product.php';</script>");
}
}
?>
