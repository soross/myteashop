<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteNav"==$_GET[task]){
	$query = $db->query("select id from comm_code where id = '$_GET[navid]'");
	$cnt = $db->db_num_rows($query);
	if($cnt>0){
	 	$db->query("delete from comm_code where comm_type='Menu' and id='$_GET[navid]'");
	 	echo "<script>alert('删除成功!');location.href='../nav.php';</script>";
	}else{
		echo "<script>alert('非法操作!');location.href='../nav.php';</script>";
	}

}else if(isset($_POST[task]) && "updateNav"==$_POST[task]){
	if(isset($_POST[navid])&&!empty($_POST[navid])){
		$db->query("update comm_code set comm_code='$_POST[nav_url]',flag='$_POST[nav_name]',remark='$_POST[nav_seq]' where id='$_POST[navid]'");
		echo "<script>alert('修改成功!');location.href='../nav.php';</script>";
	}else{
		echo "<script>alert('非法操作!');location.href='../nav.php';</script>";
	}
}else if(isset($_POST[task]) && "addNav"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_code,flag,remark) values( 'Menu','$_POST[url]','$_POST[name]','$_POST[seq]')");
	echo "<script>alert('新增成功!');location.href='../nav.php';</script>";
}else{
	echo "<script>alert('非法操作!');location.href='../nav.php';</script>";
	//文件保存目录URL
	//$save_path = '../../images/partner/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	//$ext_arr = array('gif', 'png');
	//require "../action/FileUpload.class.php";
	//$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	//if($up->uploadFile('path')){
		//$query = $db->query("select comm_code from comm_code where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		//$info= $db->fetch_array($query);
		//$filename = "images/partner/".$up->getNewFileName();
		//$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		//if(file_exists("../../".$info[comm_code]))
		//unlink("../../".$info[comm_code]);
  		//echo "<script>alert('合作伙伴修改成功!');location.href='../partnerlogo.php';</script>";
	//}else{
		//$db->query("update comm_code set comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		//echo "<script>alert('合作伙伴修改成功!');location.href='../partnerlogo.php';</script>";
	//}

}
?>
