<?php
require_once("../../action/global_post.php");
//echo "file upload....".$_POST[task]."...".$_GET[page];

//��Ӱ���
if(isset($_POST[task])&&"addCase"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require ('../../action/uploadCore.php');
	//���������û��ϴ����ļ����͡�
	$type = array('gif', 'jpg', 'png', 'jpeg', 'pjpeg','bmp','x-png');
	//ʵ�����ϴ��࣬��һ������Ϊ�û��ϴ����ļ��顢�ڶ�������Ϊ�洢·����
	//����������Ϊ�ļ�����С�����������Ĭ��Ϊ2M
	//���ĸ�����Ϊ�����û��ϴ����������顣���������Ĭ��Ϊgif, jpg, png, zip, rar, txt, doc, pdf
	$upload = new UploadFile($_FILES['user_upload_file'], '../../../images/', 500000, $type);
	//�ϴ��û��ļ�������intֵ��Ϊ�ϴ��ɹ����ļ�������
	$num = $upload->upload();
	if ($num != 0) {
		//echo "�ϴ��ɹ�<br>";
		$upload_info=$upload->getSaveInfo();
		//ȡ���ļ����й���Ϣ���ļ��������͡���С��·������print_r()��ӡ������
		//print_r($upload_info);
		//echo $num."���ļ��ϴ��ɹ�";

		//�����������ݵ����ݿ�
		$sql = "insert into succ_case(case_name,create_date) values('$_POST[case_name]',now())";
		$db->query($sql);

		$caseID = $db->insert_id();

		for ($index = 0; $index < sizeof($upload_info); $index++) {
			$sqlPath = "insert into succ_case_path(case_id,case_path,create_date) values('$caseID','".$upload_info[$index]['saveas']."',now())";
			$db->query($sqlPath);
		}
		echo "<script>if(confirm('������ӳɹ�,�Ƿ������Ӱ���?')){location.href='../caseadd.php';}else{location.href='../caselist.php'}</script>";
	}
	else {
		//echo "�ϴ�ʧ��<br>";
		echo "<script>alert('�������ʧ��,������!');location.href='../caseadd.php';</script>";
	}
}

//ɾ����������ͼƬid={$casePathList[list].id}&task=deleteCasePath&caseID={$info[0]}
else if(isset($_GET[task])&&"deleteCasePath"==$_GET[task]){
	unlink("../../../images/".$_POST[path]);
	$db->query("delete from succ_case_path where id='".$_GET[id]."'");
	echo "<script>alert('�ð���ͼƬɾ���ɹ�!');location.href='../caseedit.php?page=$_GET[page]&task=editcase&id=$_GET[caseid]';</script>";
}

//ɾ����Ʒ
else if(isset($_GET[task])&&"deletecase"==$_GET[task]){
	$pathQuery = $db->query("select * from succ_case_path where case_id='".$_GET[id]."'");
	while($pathRow = $db->fetch_array($pathQuery)){
		unlink("../../../images/".$pathRow[case_path]);
	}
	$db->query("delete from succ_case_path where case_id='".$_GET[id]."'");
	$db->query("delete from succ_case where id='".$_GET[id]."'");
	echo "<script>alert('����ɾ���ɹ�,�����ذ����б�!');location.href='../caselist.php?page=$_GET[page]';</script>";
}

//�޸İ�����Ϣ
else if(isset($_POST[task])&&"editcase"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
	require ('../../action/uploadCore.php');
	//���������û��ϴ����ļ����͡�
	$type = array('gif', 'jpg', 'png', 'jpeg', 'pjpeg','bmp','x-png');
	//ʵ�����ϴ��࣬��һ������Ϊ�û��ϴ����ļ��顢�ڶ�������Ϊ�洢·����
	//����������Ϊ�ļ�����С�����������Ĭ��Ϊ2M
	//���ĸ�����Ϊ�����û��ϴ����������顣���������Ĭ��Ϊgif, jpg, png, zip, rar, txt, doc, pdf
	$upload = new UploadFile($_FILES['user_upload_file'], '../../../images/', 500000, $type);
	//�ϴ��û��ļ�������intֵ��Ϊ�ϴ��ɹ����ļ�������
	$num = $upload->upload();
	if ($num != 0) {
		//echo "�ϴ��ɹ�<br>";
		$upload_info=$upload->getSaveInfo();
		//ȡ���ļ����й���Ϣ���ļ��������͡���С��·������print_r()��ӡ������
		//print_r($upload_info);
		//echo $num."���ļ��ϴ��ɹ�";

		for ($index = 0; $index < sizeof($upload_info); $index++) {
			$sqlPath = "insert into succ_case_path(case_id,case_path,create_date) values('$_POST[id]','".$upload_info[$index]['saveas']."',now())";
			$db->query($sqlPath);
		}
		echo "<script>if(confirm('����ͼƬ��ӳɹ�,�Ƿ������Ӱ���ͼƬ?')){location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';}else{location.href='../caselist.php?page=$_POST[page]'}</script>";
	}else {
		echo "<script>alert('����ͼƬ���ʧ��,������!');location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';</script>";
	}
}
else if(isset($_POST[task])&&"editCaseName"==$_POST[task]){
	//�����������ݵ����ݿ�
	$sql = "update succ_case set case_name='$_POST[case_name]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('���������޸ĳɹ�,�Ƿ�����޸�?')){location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';}else{location.href='../caselist.php?page=$_POST[page]'}</script>";


}
?>
