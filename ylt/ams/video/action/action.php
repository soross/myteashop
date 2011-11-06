<?php
//task=deleteVideo&id={$videoList[list].id}&page={$cpage}
require_once ("../../action/global_post.php");
//删除视讯
if (isset ($_GET[task]) && "deleteVideo" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		$db->query("delete from video where id='$_GET[id]'");
		echo "<script>alert('视讯删除成功,将返回视讯列表!');location.href='../videolist.php?page=$_GET[page]'</script>";
	}else{
		echo "<script>alert('非法操作!');</script>";
	}
	exit;
}
//修改视频名称
else if(isset ($_POST[task]) && "editVideoName" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		$db->query("update video set video_name='$_POST[title]' where id='$_POST[id]'");
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('视讯名称修改成功,是否继续修改?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('非法操作!');</script>";
	}
	exit;
}
//修改视频简介
else if(isset ($_POST[task]) && "editVideoDesc" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		$db->query("update video set video_desc='$_POST[desc]' where id='$_POST[id]'");
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('视讯描述修改成功,是否继续修改?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('非法操作!');</script>";
	}
	exit;
}
//修改视频简图
else if(isset ($_POST[task]) && "editVideoPicture" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		//文件保存目录路径
		$save_path = '../../../video/images/';
		//文件保存目录URL
		$save_url = '../../../video/images/';
		//定义允许上传的文件扩展名
		$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
		//最大文件大小
		$max_size = 1048576;// 1m
		require_once ("../action/fileupload.php");
		//echo $new_file_name;
		$db->query("update video set video_picture='../video/images/$new_file_name' where id='$_POST[id]'");
		unlink("../../".$_POST["old_picture"]);
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('视讯简图修改成功,是否继续修改?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('非法操作!');</script>";
	}
	exit;
}
//修改视频 php.ini===== post_max_size=125m  upload_max_filesize=125m
else if(isset ($_POST[task]) && "editVideoFiles" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		//文件保存目录路径
		$save_path = '../../../video/file/';
		//定义允许上传的文件扩展名
		$ext_arr = array('swf', 'avi', 'asf', 'mid', 'wmv','wma','ra');
		require "FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>200485760));

		//echo '<pre>';

		if($up->uploadFile('upfile')){
			//print_r($up->getNewFileName());
			$fname = $up->getNewFileName();
			unlink("../../".$_POST["old_file"]);
			$db->query("update video set video_path='../video/file/$fname' where id='$_POST[id]'");
	  		echo "<script>if(confirm('视讯文件修改成功,是否继续修改?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
		}else{
			print_r($up->getErrorMsg());
			echo "<script>if(confirm('视讯文件修改失败,是否重试?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
		}
		//echo '</pre>';

	  	//?task=editVideo&id={$videoList[list].id}&page={$cpage}

	}else{
		echo "<script>alert('非法操作!');</script>";
	}
	exit;
}else if(isset($_POST[task]) && "addVideoInfo"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../../video/images/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
	require "FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>1048576));
	if($up->uploadFile('video_picture')){
		//print_r($up->getNewFileName());
		$fname = "../video/images/".$up->getNewFileName();
		$sql = "insert into video(video_name,video_desc,video_picture,create_date) values('$_POST[title]','$_POST[desc]','$fname',now())";
		$db->query($sql);
		$id = $db->insert_id();
  		echo "<script>alert('视讯信息添加成功,请上传视讯文件?');location.href='../videoadd.php?task=uploadVideoFile&id=$id';</script>";
	}else{
		print_r($up->getErrorMsg());
		echo "<script>alert('视讯添加失败,是否重试?');location.href='../videoadd.php;</script>";
	}
}else if(isset($_POST[task]) &&"addVideoFile"==$_POST[task]){
	//文件保存目录路径
	$save_path = '../../../video/file/';
	//定义允许上传的文件扩展名

	$ext_arr_file = array('swf', 'avi', 'asf', 'mid', 'wmv','wma','ra');
	require "FileUpload.class.php";
	$upFile=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr_file,'FilePath'=>$save_path, 'MAXSIZE'=>200485760));

	if($upFile->uploadFile('upfile')){
		//print_r($up->getNewFileName());
		$fname = $upFile->getNewFileName();
		$sql = "update video set video_path='../video/file/$fname' where id = $_POST[id]";
		$db->query($sql);
  		echo "<script>if(confirm('视讯添加完成,是否继续添加?')){location.href='../videoadd.php';}else{location.href='../videolist.php';}</script>";
	}else{
		print_r($upFile->getErrorMsg());
		echo "<script>alert('视讯添加失败,是否重试?');location.href='../videoadd.php';</script>";
	}
}
?>
