<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	if($_POST[remark]=='NEWS'){
		$db->query("insert into news(title,author,content,src,create_date,typeid,remark)" .
				"values('$_POST[title]','$_POST[author]','".replace($_POST[content])."','$_POST[src]',now(),'$_POST[type]','NEWS')");

		echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";

	}else{
		//�ļ�����Ŀ¼URL
		$save_path = '../../file/';//201109281154581.jpg
		//���������ϴ����ļ���չ��
		$ext_arr = array('doc','txt', 'xls','rar','zip','ppt','pdf','docx','xlsx','pptx');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(3*1024*1024)));//3m
		if($up->uploadFile('newsfile')){
			$filename = "file/".$up->getNewFileName();
			$srcfilename=$up->getSrcFileName();
			$db->query("insert into news(title,src,author,create_date,remark)" .
				"values('$_POST[title]','$filename','$srcfilename',now(),'DOC')");
	  		echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
		}else{
			echo "<script>alert('��������ʧ��,������!');location.href='../addnews.php';</script>";
		}
	}

}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	if(file_exists("../../".$_GET[path])){
		unlink("../../".$_GET[path]);
	}
	$db->query("delete from news where id = '$_GET[newsid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../news.php';</script>";


}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";

}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	if($_POST[remark]=='NEWS'){
		$db->query("update news set title='$_POST[title]',author='$_POST[author]',content='".replace($_POST[content])."',src='$_POST[src]'," .
				"typeid='$_POST[type]', remark='$_POST[remark]' where id='$_POST[newsid]'");
		echo "<script>if(confirm('�����޸ĳɹ�,�Ƿ��������?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";

	}else{
		//�ļ�����Ŀ¼URL
		$save_path = '../../file/';//201109281154581.jpg
		//���������ϴ����ļ���չ��
		$ext_arr = array('doc','txt', 'xls','rar','zip','ppt','pdf','docx','xlsx','pptx');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(3*1024*1024)));//3m
		if($up->uploadFile('newsfile')){
			$filename = "file/".$up->getNewFileName();
			$srcfilename=$up->getSrcFileName();
			$db->query("update news set title='$_POST[title]',src='$filename'," .
				"author='$srcfilename' where id='$_POST[newsid]'");
	  		echo "<script>if(confirm('�����ĵ����³ɹ�,�Ƿ�����޸�?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";
		}else{
			$db->query("update news set title='$_POST[title]',author='$_POST[filename]' where id='$_POST[newsid]'");
			echo "<script>if(confirm('�����ĵ���Ϣ���³ɹ�,�Ƿ�����޸�?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";
		}
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
