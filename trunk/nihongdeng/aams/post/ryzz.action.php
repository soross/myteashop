<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addrzyy"== $_POST[task]){

		//�ļ�����Ŀ¼URL
	$save_path = '../../images/product/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('ryzz_pic')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename = "images/product/".$up->getNewFileName();
		$db->query("insert into cp(cp_info_type_en,cp_info_type_zh_cn,cp_info_value_en,cp_info_value_zh_cn,remark,seq,path,create_date) values('$_POST[ryzz_name_en]','$_POST[ryzz_name_zh_cn]','".addslashes($_POST[content2])."','".addslashes($_POST[content])."','Honour',null,'$filename',now())");

		echo "<script>alert('�����������ʳɹ�');location.href='../ryzz.php';</script>";
	}else{
		echo "<script>alert('������������ʧ��');location.href='../addryzz.php';</script>";
	}


}
else if(isset($_GET[task]) && "deleteryzz"==$_GET[task]){
	$db->query("delete from cp where id = '$_GET[ryzzid]'");
	echo "<script>alert('��������ɾ���ɹ�?');location.href='../ryzz.php';</script>";
}

 else if(isset($_POST[task]) && "updateryzz"== $_POST[task]){

	//�ļ�����Ŀ¼URL
	$save_path = '../../images/cert/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('ryzz_pic')){
	$query = $db->query("select path from cp where id='$_POST[prod_id]'");
	$info= $db->fetch_array($query);
	$filename = "images/cert/".$up->getNewFileName();
	$db->query("update cp set cp_info_type_zh_cn='$_POST[ryzz_name_zh_cn]',cp_info_type_en='$_POST[ryzz_name_en]',cp_info_value_zh_cn='".addslashes($_POST[content])."',cp_info_value_en='".addslashes($_POST[content2])."',path='$filename' where id='$_POST[ryzz_id]'");
	//unlink("../../".$info[path]);
	   echo "<script>alert('�޸ĳɹ�!');location.href='../ryzz.php';</script>";
	}else{
	$db->query("update cp set cp_info_type_zh_cn='$_POST[ryzz_name_zh_cn]',cp_info_type_en='$_POST[ryzz_name_en]',cp_info_value_zh_cn='".addslashes($_POST[content])."',cp_info_value_en='".addslashes($_POST[content2])."' where id='$_POST[ryzz_id]'");
	echo "<script>alert('ͼƬ�޸�ʧ�ܻ���ͼƬû���޸�,���������Ϣ�޸ĳɹ�!');location.href='../ryzz.php';</script>";
}
}

?>
