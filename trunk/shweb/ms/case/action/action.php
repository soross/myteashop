<?php
require_once("../../action/global_post.php");
//echo "file upload....".$_POST[task]."...".$_GET[page];

//添加案例
if(isset($_POST[task])&&"addCase"==$_POST[task]){
	//上传文件并获取文件名
	require ('../../action/uploadCore.php');
	//设置允许用户上传的文件类型。
	$type = array('gif', 'jpg', 'png', 'jpeg', 'pjpeg','bmp','x-png');
	//实例化上传类，第一个参数为用户上传的文件组、第二个参数为存储路径、
	//第三个参数为文件最大大小。如果不填则默认为2M
	//第四个参数为充许用户上传的类型数组。如果不填则默认为gif, jpg, png, zip, rar, txt, doc, pdf
	$upload = new UploadFile($_FILES['user_upload_file'], '../../../images/', 500000, $type);
	//上传用户文件，返回int值，为上传成功的文件个数。
	$num = $upload->upload();
	if ($num != 0) {
		//echo "上传成功<br>";
		$upload_info=$upload->getSaveInfo();
		//取得文件的有关信息，文件名、类型、大小、路径。用print_r()打印出来。
		//print_r($upload_info);
		//echo $num."个文件上传成功";

		//插入其他数据到数据库
		$sql = "insert into succ_case(case_name,create_date) values('$_POST[case_name]',now())";
		$db->query($sql);

		$caseID = $db->insert_id();

		for ($index = 0; $index < sizeof($upload_info); $index++) {
			$sqlPath = "insert into succ_case_path(case_id,case_path,create_date) values('$caseID','".$upload_info[$index]['saveas']."',now())";
			$db->query($sqlPath);
		}
		echo "<script>if(confirm('案例添加成功,是否继续添加案例?')){location.href='../caseadd.php';}else{location.href='../caselist.php'}</script>";
	}
	else {
		//echo "上传失败<br>";
		echo "<script>alert('案例添加失败,请重试!');location.href='../caseadd.php';</script>";
	}
}

//删除单个案例图片id={$casePathList[list].id}&task=deleteCasePath&caseID={$info[0]}
else if(isset($_GET[task])&&"deleteCasePath"==$_GET[task]){
	unlink("../../../images/".$_POST[path]);
	$db->query("delete from succ_case_path where id='".$_GET[id]."'");
	echo "<script>alert('该案例图片删除成功!');location.href='../caseedit.php?page=$_GET[page]&task=editcase&id=$_GET[caseid]';</script>";
}

//删除产品
else if(isset($_GET[task])&&"deletecase"==$_GET[task]){
	$pathQuery = $db->query("select * from succ_case_path where case_id='".$_GET[id]."'");
	while($pathRow = $db->fetch_array($pathQuery)){
		unlink("../../../images/".$pathRow[case_path]);
	}
	$db->query("delete from succ_case_path where case_id='".$_GET[id]."'");
	$db->query("delete from succ_case where id='".$_GET[id]."'");
	echo "<script>alert('案例删除成功,将返回案例列表!');location.href='../caselist.php?page=$_GET[page]';</script>";
}

//修改案例信息
else if(isset($_POST[task])&&"editcase"==$_POST[task]){
	//上传文件并获取文件名
	require ('../../action/uploadCore.php');
	//设置允许用户上传的文件类型。
	$type = array('gif', 'jpg', 'png', 'jpeg', 'pjpeg','bmp','x-png');
	//实例化上传类，第一个参数为用户上传的文件组、第二个参数为存储路径、
	//第三个参数为文件最大大小。如果不填则默认为2M
	//第四个参数为充许用户上传的类型数组。如果不填则默认为gif, jpg, png, zip, rar, txt, doc, pdf
	$upload = new UploadFile($_FILES['user_upload_file'], '../../../images/', 500000, $type);
	//上传用户文件，返回int值，为上传成功的文件个数。
	$num = $upload->upload();
	if ($num != 0) {
		//echo "上传成功<br>";
		$upload_info=$upload->getSaveInfo();
		//取得文件的有关信息，文件名、类型、大小、路径。用print_r()打印出来。
		//print_r($upload_info);
		//echo $num."个文件上传成功";

		for ($index = 0; $index < sizeof($upload_info); $index++) {
			$sqlPath = "insert into succ_case_path(case_id,case_path,create_date) values('$_POST[id]','".$upload_info[$index]['saveas']."',now())";
			$db->query($sqlPath);
		}
		echo "<script>if(confirm('案例图片添加成功,是否继续添加案例图片?')){location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';}else{location.href='../caselist.php?page=$_POST[page]'}</script>";
	}else {
		echo "<script>alert('案例图片添加失败,请重试!');location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';</script>";
	}
}
else if(isset($_POST[task])&&"editCaseName"==$_POST[task]){
	//插入其他数据到数据库
	$sql = "update succ_case set case_name='$_POST[case_name]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('案例名称修改成功,是否继续修改?')){location.href='../caseedit.php?page=$_POST[page]&id=$_POST[id]&task=editcase';}else{location.href='../caselist.php?page=$_POST[page]'}</script>";


}
?>
