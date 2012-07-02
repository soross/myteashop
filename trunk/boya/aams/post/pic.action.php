<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addPicture"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/picture/';//201109281154581.jpg
	//定义允许上传的文件扩展名
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
  		echo "<script>if(confirm('图片新增成功,是否继续新增?')){location.href='../addpic.php';}else{location.href='../piclist.php';}</script>";
	}else{
		echo "<script>alert('图片新增失败,请重试!');location.href='../addpic.php';</script>";
	}
//task=deletePicture&picid=6&path=images/picture/20120620070934179.jpg
}else if(isset($_GET[task]) && "deletePicture"==$_GET[task]){
	if(file_exists("../../".$_GET[path])){
		unlink("../../".$_GET[path]);
	}
	$db->query("delete from boya_news where id = '$_GET[picid]'");
	echo "<script>alert('图片删除成功?');location.href='../piclist.php';</script>";


}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";

}else if(isset($_POST[task]) && "updatePicture"==$_POST[task]){

	//文件保存目录URL
	$save_path = '../../images/picture/';//201109281154581.jpg
	//定义允许上传的文件扩展名
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

  		echo "<script>if(confirm('图片更新成功,是否继续修改?')){location.href='../updatepic.php?picid=$_POST[picid]';}else{location.href='../piclist.php';}</script>";
	}else{
		$db->query("update boya_news set title='$_POST[title]',content='$_POST[content]' where id='$_POST[picid]'");
		echo "<script>if(confirm('图片信息更新成功,图片文件没有修改或格式不对,是否继续修改?')){location.href='../updatepic.php?picid=$_POST[picid]';}else{location.href='../piclist.php';}</script>";
	}

}else if(isset($_POST[task]) && "alldelNews"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
	if($selectsingle!=""){
	$del_num=count($selectsingle);
	for($i=0;$i<$del_num;$i++){
		$db->query("delete from news where id ='$selectsingle[$i]'");
	}
	echo("<script type='text/javascript'>alert('删除成功！');location.href='../news.php';</script>");
	}else{
	echo("<script type='text/javascript'>alert('删除成功失改！');location.href='../news.php';</script>");
	}

}



?>
