<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addCase"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/case';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('casepic')){
		$filename = $up->getNewFileName();

		$db->query("insert into obj_case(case_name,case_desc,case_pic,create_date,lang) " .
				"values('$_POST[title]','".replaceContent($_POST[content])."','$filename',now(),'$_POST[lang]')");

		echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addcase.php';}else{location.href='../case.php';}</script>";
	}else{
		echo "<script>alert('��������ʧ��,������!');location.href='../addcase.php';</script>";
	}
}

else if(isset($_GET[task]) && "deleteCase"==$_GET[task]){
	$db->query("delete from obj_case where id = '$_GET[caseid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../case.php';</script>";
}

else if(isset($_POST[task]) && "updateCase"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/case';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('casepic')){
		$filename = $up->getNewFileName();
		unlink("../../images/case/".$_POST[case_pic]);
	}else{
		$filename = $_POST[case_pic];
	}
	$db->query("update obj_case set case_name='$_POST[title]',case_desc='".replaceContent($_POST[content])."',case_pic='$filename'," .
			"lang='$_POST[lang]' where id='".$_POST[caseid]."'");

	echo "<script>if(confirm('������Ϣ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatecase.php?caseid=".$_POST[caseid]."';}else{location.href='../case.php';}</script>";
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
