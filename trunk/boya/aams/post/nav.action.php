<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteNav"==$_GET[task]){
	$query = $db->query("select id from menu where pid = '$_GET[navid]'");
	$cnt = $db->db_num_rows($query);
	if($cnt<1){
		if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	 	$db->query("delete from menu where id='$_GET[navid]'");
	 	echo "<script>alert('删除成功!');location.href='../nav.php';</script>";
	}else{
		echo "<script>alert('父类菜单不能删除!');location.href='../nav.php';</script>";
	}

}else if(isset($_POST[task]) && "updateNav"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/pic/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));

	$type='';
	if("18"==$_POST[pid]){//产品
		$type=$_POST[type];
	}
	$pid = -1;
	if($_POST[pid]!=0){
		$pid =$_POST[pid];
	}

	if($up->uploadFile('picture')){
		$filename = "images/pic/".$up->getNewFileName();
		$db->query("update menu set name='$_POST[name]',picture='$filename',seq='$_POST[seq]',pid='$pid',type='$type',`desc`='".replace($_POST[content])."' where id='$_POST[navid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>if(confirm('更新成功,是否继续更新?')){location.href='../editnav.php?task=toUpdateNav&navid=$_POST[navid]';}else{location.href='../nav.php';}</script>";
	}else{
		$db->query("update menu set name='$_POST[name]',seq='$_POST[seq]',pid='$pid',type='$type',`desc`='".replace($_POST[content])."' where id='$_POST[navid]'");
		echo "<script>if(confirm('更新成功,是否继续更新?')){location.href='../editnav.php?task=toUpdateNav&navid=$_POST[navid]';}else{location.href='../nav.php';}</script>";
	}


	//$db->query("update menu set menu_name_zh_cn='$_POST[name_cn]',menu_name_en='$_POST[name_en]',pid='$_POST[type]',`show`='$_POST[show]',remark='$_POST[remark]',url='$_POST[url]' where id='$_POST[navid]'");
	echo "<script>if(confirm('更新成功,是否继续更新?')){location.href='../editnav.php?task=toUpdateNav&navid=$_POST[navid]';}else{location.href='../nav.php';}</script>";

}else if(isset($_POST[task]) && "addNav"==$_POST[task]){
	if($_POST[pid]!=-1){

		//文件保存目录URL
		$save_path = '../../images/pic/';//201109281154581.jpg
		//定义允许上传的文件扩展名
		$ext_arr = array('gif','jpg', 'png');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
		if($up->uploadFile('picture')){
			$filename = "images/pic/".$up->getNewFileName();
			$type='';
			$str='';
			$url='';
			if("18"==$_POST[pid]){//产品
				$type=$_POST[type];
				$str='prodinfo.php?prodid=';
			}else if('1'==$_POST[pid]){//解决方案
				$str='solutioninfo.php?solid=';
			}else if('8'==$_POST[pid]){//it服务
				$str='itserviceinfo.php?itsid=';
			}else if('14'==$_POST[pid]){//政府采购
				$str='govprocinfo.php?traid=';
			}else if("24"==$_POST[pid] || "25"==$_POST[pid]){
				$url =$_POST[url];
			}

			$db->query("insert into menu(name,pid,seq,picture,`desc`,type,url) " .
					"values('$_POST[name]','$_POST[pid]','$_POST[seq]','$filename','".replace($_POST[content])."','$type','$url')");
			if(''!=$str){
				$newID = $db->insert_id();
				$db->query("update menu set url='".$str.$newID."' where id='$newID'");
			}
	  		echo "<script>if(confirm('导航新增成功,是否继续新增?')){location.href='../addnav.php';}else{location.href='../nav.php';}</script>";
		}else{
			echo "<script>alert('导航新增失败,请重试!');location.href='../addnav.php';</script>";
		}
	}else{
		echo "<script>alert('无法新增顶级目录,如有修改请联系技术人员!');location.href='../addnav.php';</script>";
	}
}else{
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
