<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addPicture"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/picture/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('jpg','png','JPG', 'gif');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(100000*1024)));//100k
	if($up->uploadFile('newsfile')){
		$filename = "images/picture/".$up->getNewFileName();
		$srcfilename=$up->getSrcFileName();
		$db->query("insert into boya_news(title,path,content,create_date)" .
			"values('$_POST[title]','$filename','$_POST[content]',now())");
			$insertID = $db->insert_id();
		$db->query("update boya_news set url ='info.php?picid=".$insertID."' where id='$insertID'");
  		echo "<script>if(confirm('ͼƬ�����ɹ�,�Ƿ��������?')){location.href='../addpic.php';}else{location.href='../piclist.php';}</script>";
	}else{
		echo "<script>alert('ͼƬ����ʧ��,������!');location.href='../addpic.php';</script>";
	}
//task=deletePicture&picid=6&path=images/picture/20120620070934179.jpg
}else if(isset($_GET[task]) && "deletePicture"==$_GET[task]){
	if(file_exists("../../".$_GET[path])){
		unlink("../../".$_GET[path]);
	}
	$db->query("delete from boya_news where id = '$_GET[picid]'");
	echo "<script>alert('ͼƬɾ���ɹ�?');location.href='../piclist.php';</script>";


}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";

}else if(isset($_POST[task]) && "updatePicture"==$_POST[task]){

	//�ļ�����Ŀ¼URL
	$save_path = '../../images/picture/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('jpg','png','JPG', 'gif');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(100000*1024)));//3m
	if($up->uploadFile('newsfile')){
		$filename = "images/picture/".$up->getNewFileName();
		$db->query("update boya_news set title='$_POST[title]',path='$filename'," .
			"content='$_POST[content]' where picid='$_POST[picid]'");

		if(file_exists("../../".$_POST[path])){
			unlink("../../".$_POST[path]);
		}

  		echo "<script>if(confirm('ͼƬ���³ɹ�,�Ƿ�����޸�?')){location.href='../updatepic.php?picid=$_POST[picid]';}else{location.href='../piclist.php';}</script>";
	}else{
		$db->query("update boya_news set title='$_POST[title]',content='$_POST[content]' where id='$_POST[picid]'");
		echo "<script>if(confirm('ͼƬ��Ϣ���³ɹ�,ͼƬ�ļ�û���޸Ļ��ʽ����,�Ƿ�����޸�?')){location.href='../updatepic.php?picid=$_POST[picid]';}else{location.href='../piclist.php';}</script>";
	}

}else if(isset($_POST[task]) && "alldelNews"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //���ո�ѡ���ֵ   Ϊ����
	if($selectsingle!=""){
	$del_num=count($selectsingle);
	for($i=0;$i<$del_num;$i++){
		$db->query("delete from news where id ='$selectsingle[$i]'");
	}
	echo("<script type='text/javascript'>alert('ɾ���ɹ���');location.href='../news.php';</script>");
	}else{
	echo("<script type='text/javascript'>alert('ɾ���ɹ�ʧ�ģ�');location.href='../news.php';</script>");
	}

}



?>
