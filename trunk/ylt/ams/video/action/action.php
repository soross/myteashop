<?php
//task=deleteVideo&id={$videoList[list].id}&page={$cpage}
require_once ("../../action/global_post.php");
//ɾ����Ѷ
if (isset ($_GET[task]) && "deleteVideo" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		$db->query("delete from video where id='$_GET[id]'");
		echo "<script>alert('��Ѷɾ���ɹ�,��������Ѷ�б�!');location.href='../videolist.php?page=$_GET[page]'</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');</script>";
	}
	exit;
}
//�޸���Ƶ����
else if(isset ($_POST[task]) && "editVideoName" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		$db->query("update video set video_name='$_POST[title]' where id='$_POST[id]'");
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('��Ѷ�����޸ĳɹ�,�Ƿ�����޸�?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');</script>";
	}
	exit;
}
//�޸���Ƶ���
else if(isset ($_POST[task]) && "editVideoDesc" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		$db->query("update video set video_desc='$_POST[desc]' where id='$_POST[id]'");
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('��Ѷ�����޸ĳɹ�,�Ƿ�����޸�?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');</script>";
	}
	exit;
}
//�޸���Ƶ��ͼ
else if(isset ($_POST[task]) && "editVideoPicture" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		//�ļ�����Ŀ¼·��
		$save_path = '../../../video/images/';
		//�ļ�����Ŀ¼URL
		$save_url = '../../../video/images/';
		//���������ϴ����ļ���չ��
		$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
		//����ļ���С
		$max_size = 1048576;// 1m
		require_once ("../action/fileupload.php");
		//echo $new_file_name;
		$db->query("update video set video_picture='../video/images/$new_file_name' where id='$_POST[id]'");
		unlink("../../".$_POST["old_picture"]);
		//?task=editVideo&id={$videoList[list].id}&page={$cpage}
		echo "<script>if(confirm('��Ѷ��ͼ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');</script>";
	}
	exit;
}
//�޸���Ƶ php.ini===== post_max_size=125m  upload_max_filesize=125m
else if(isset ($_POST[task]) && "editVideoFiles" == $_POST[task]){
	if (isset ($_POST[id]) && !empty ($_POST[id])) {
		//�ļ�����Ŀ¼·��
		$save_path = '../../../video/file/';
		//���������ϴ����ļ���չ��
		$ext_arr = array('swf', 'avi', 'asf', 'mid', 'wmv','wma','ra');
		require "FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>200485760));

		//echo '<pre>';

		if($up->uploadFile('upfile')){
			//print_r($up->getNewFileName());
			$fname = $up->getNewFileName();
			unlink("../../".$_POST["old_file"]);
			$db->query("update video set video_path='../video/file/$fname' where id='$_POST[id]'");
	  		echo "<script>if(confirm('��Ѷ�ļ��޸ĳɹ�,�Ƿ�����޸�?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
		}else{
			print_r($up->getErrorMsg());
			echo "<script>if(confirm('��Ѷ�ļ��޸�ʧ��,�Ƿ�����?')){location.href='../videoedit.php?task=editVideo&id=$_POST[id]&page=$_POST[page]';}else{location.href='../videolist.php?page=$_POST[page]';}</script>";
		}
		//echo '</pre>';

	  	//?task=editVideo&id={$videoList[list].id}&page={$cpage}

	}else{
		echo "<script>alert('�Ƿ�����!');</script>";
	}
	exit;
}else if(isset($_POST[task]) && "addVideoInfo"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../../video/images/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
	require "FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>1048576));
	if($up->uploadFile('video_picture')){
		//print_r($up->getNewFileName());
		$fname = "../video/images/".$up->getNewFileName();
		$sql = "insert into video(video_name,video_desc,video_picture,create_date) values('$_POST[title]','$_POST[desc]','$fname',now())";
		$db->query($sql);
		$id = $db->insert_id();
  		echo "<script>alert('��Ѷ��Ϣ��ӳɹ�,���ϴ���Ѷ�ļ�?');location.href='../videoadd.php?task=uploadVideoFile&id=$id';</script>";
	}else{
		print_r($up->getErrorMsg());
		echo "<script>alert('��Ѷ���ʧ��,�Ƿ�����?');location.href='../videoadd.php;</script>";
	}
}else if(isset($_POST[task]) &&"addVideoFile"==$_POST[task]){
	//�ļ�����Ŀ¼·��
	$save_path = '../../../video/file/';
	//���������ϴ����ļ���չ��

	$ext_arr_file = array('swf', 'avi', 'asf', 'mid', 'wmv','wma','ra');
	require "FileUpload.class.php";
	$upFile=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr_file,'FilePath'=>$save_path, 'MAXSIZE'=>200485760));

	if($upFile->uploadFile('upfile')){
		//print_r($up->getNewFileName());
		$fname = $upFile->getNewFileName();
		$sql = "update video set video_path='../video/file/$fname' where id = $_POST[id]";
		$db->query($sql);
  		echo "<script>if(confirm('��Ѷ������,�Ƿ�������?')){location.href='../videoadd.php';}else{location.href='../videolist.php';}</script>";
	}else{
		print_r($upFile->getErrorMsg());
		echo "<script>alert('��Ѷ���ʧ��,�Ƿ�����?');location.href='../videoadd.php';</script>";
	}
}
?>
