<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[mbid]) && !empty($_GET[mbid])
 &&isset($_GET[result])&& !empty($_GET[result])){
	//passAuth backAuth
	$state = -1;
	$msg ="申请删除成功";
	if(isset($_GET[result])&&"passAuth"==$_GET[result]){
		$state = 0;
		$msg = "审核通过!";
		$db->query("update lm_member set mb_type=state,state='".$state."' where id ='".$_GET[mbid]."' ");

		$query = $db->query("select id from lm_sj where mb_id='".$_GET[mbid]."'");
		$cnt = $db->db_num_rows();
		if($cnt>0){
			$db->query("update lm_sj set state='0' where mb_id='".$_GET[mbid]."'");
		}

		if(isset($_GET[gourl]) && "auth"==$_GET[gourl] ){
			echo "<script>alert('".$msg."');location.href='../auth.php';</script>";
		}else{
			echo "<script>alert('".$msg."');location.href='../authdl.php';</script>";
		}
	}else{
		$db->query("update lm_member set state='0' where id ='".$_GET[mbid]."'");

		if(isset($_GET[gourl]) && "auth"==$_GET[gourl] ){
			echo "<script>alert('".$msg."');location.href='../auth.php';</script>";
		}else{
			$db->query("delete from lm_sj where mb_id ='".$_GET[mbid]."' ");
			echo "<script>alert('".$msg."');location.href='../authdl.php';</script>";
		}
	}
}else if(isset($_POST[task]) && "SjHeTong"== $_POST[task]){
		//文件保存目录URL
		$save_path = '../../file/';
		//定义允许上传的文件扩展名
		$ext_arr = array('doc', 'wps', 'txt');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>5100000));
		if($up->uploadFile('htfile')){
			$query = $db->query("select type_code from lm_comm_code where type_name='SjHeTong'");
			$info= $db->fetch_array($query);

			$filename = "../file/".$up->getNewFileName();
			$srcFileName=$up->getSrcFileName();
			$sql="update lm_comm_code set type_code='".$filename."',content='".$srcFileName."' where type_name='SjHeTong'";
			$db->query($sql);

			unlink("../".$info[type_code]);

	  		echo "<script>alert('上传成功!');location.href='../uploadht.php';</script>";
		}else{
			print_r($up->getErrorMsg());
			echo "<script>alert('上传失败!');location.href='../uploadht.php';</script>";
		}

}else if(isset($_POST[task]) && "AgentHeTong"== $_POST[task]){
	//文件保存目录URL
	$save_path = '../../file/';
	//定义允许上传的文件扩展名
	$ext_arr = array('doc', 'wps', 'txt');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>5100000));
	if($up->uploadFile('htfile')){
		$query = $db->query("select type_code from lm_comm_code where type_name='AgentHeTong'");
		$info= $db->fetch_array($query);


		$filename = "../file/".$up->getNewFileName();
		$srcFileName=$up->getSrcFileName();
		$sql="update lm_comm_code set type_code='".$filename."',content='".$srcFileName."' where type_name='AgentHeTong'";
		$db->query($sql);


		unlink("../".$info[type_code]);
  		echo "<script>alert('上传成功!');location.href='../uploadht.php';</script>";
	}else{
		print_r($up->getErrorMsg());
		echo "<script>alert('上传失败!');location.href='../uploadht.php';</script>";
	}
}else if(isset($_GET[txid]) && !empty($_GET[txid])
 &&isset($_GET[result])&& !empty($_GET[result])){
	//passAuth backAuth
	$state = -1;
	$msg ="提现审核成功退回";
	if(isset($_GET[result])&&"passAuthTx"==$_GET[result]){
		$state = 1;
		$msg = "提现审核通过,请汇款!";
	}else{
		$db->query("update lm_mb_limit set money=money+((select num from lm_mb_money where state='0' and id='".$_GET[txid]."')/0.8 )" .
				"where mb_id = (select mb_id from lm_mb_money where state='0' and id='".$_GET[txid]."')");
	}
	$db->query("update lm_mb_money set state='".$state."' where id ='".$_GET[txid]."' ");
	echo "<script>alert('".$msg."');location.href='../authtx.php';</script>";
}
?>
