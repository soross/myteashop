<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_GET[task]) && "deleteCase"==$_GET[task]){
	$query = $db->query("select * from `case` where id='$_GET[caseid]'");
	$info = $db->fetch_array($query);

    print_r($info);
	if(file_exists("../../".$info[case_pic])){
		unlink("../../".$info[case_pic]);
	}
	if(file_exists("../../".$info[case_pic_a])){
		unlink("../../".$info[case_pic_a]);
	}
	if(file_exists("../../".$info[case_pic_b])){
		unlink("../../".$info[case_pic_b]);
	}
	if(file_exists("../../".$info[case_pic_c])){
		unlink("../../".$info[case_pic_c]);
	}

	$db->query("delete from `case` where id = '$_GET[caseid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../case.php';</script>";
}

else if(isset($_POST[task]) && "addCase"== $_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/case/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('case1')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename1 = "images/case/".$up->getNewFileName();
	}else{
		//$up->getErrorMsg();
		echo "<script>alert('��������ʧ��,����ͼƬ1�Ƿ�����!');location.href='../addcase.php';</script>";
		exit;
	}
	if($up->uploadFile('case2')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename2 = "images/case/".$up->getNewFileName();
	}
	if($up->uploadFile('case3')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename3 = "images/case/".$up->getNewFileName();
	}
	if($up->uploadFile('case4')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename4 = "images/case/".$up->getNewFileName();
	}
	$db->query("insert into `case`(case_name,case_type,case_url,case_cust,case_desc,create_date,case_pic,case_pic_a,case_pic_b,case_pic_c) " .
			"values('$_POST[name]','$_POST[type]','$_POST[url]','$_POST[cust]','".replace($_POST[content])."',now(),'$filename1','$filename2','$filename3','$filename4')");
	echo "<script>if(confirm('���Ӱ����ɹ�,�Ƿ��������?')){location.href='../addcase.php';}else{ location.href='../case.php';}</script>";

}else if(isset($_POST[task]) && "updateCase"== $_POST[task]){

	//�ļ�����Ŀ¼URL
	$save_path = '../../images/case/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	$sql="update `case` set case_name='$_POST[name]',case_type='$_POST[type]',case_url='$_POST[url]'," .
			"case_cust='$_POST[cust]',";

	if($up->uploadFile('case1')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename1 = "images/case/".$up->getNewFileName();
		if(file_exists("../../".$_POST[path1])){
			unlink("../../".$_POST[path1]);
		}
		$sql = $sql." case_pic='$filename1',";
	}
	if($up->uploadFile('case2')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename2 = "images/case/".$up->getNewFileName();
		if(file_exists("../../".$_POST[path2])){
			unlink("../../".$_POST[path2]);
		}
		$sql = $sql." case_pic_a='$filename2',";
	}
	if($up->uploadFile('case3')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename3 = "images/case/".$up->getNewFileName();
		if(file_exists("../../".$_POST[path3])){
			unlink("../../".$_POST[path3]);
		}
		$sql = $sql." case_pic_b='$filename3',";
	}
	if($up->uploadFile('case4')){
		//�ϴ����ƷͼƬ���� �ŵ����ݿ�
		$filename4 = "images/case/".$up->getNewFileName();
		if(file_exists("../../".$_POST[path4])){
			unlink("../../".$_POST[path4]);
		}
		$sql = $sql." case_pic_c='$filename4',";
	}
	$sql = $sql." case_desc='".replace($_POST[content])."' where id='$_POST[caseid]'";
	$db->query($sql);
	echo "<script>if(confirm('�������³ɹ�,�Ƿ�����޸�?')){location.href='../editcase.php?task=toUpdateCase&caseid=$_POST[caseid]';}else{ location.href='../case.php';}</script>";

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
