<?php
require_once ("../action/mysql.class.php");
//商家申请
if(isset($_POST['task'])&&"applyAgentMc"==$_POST['task']){
	require_once("../action/checkLogin.php");

	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		//文件保存目录URL
		$save_path = '../images/';
		//定义允许上传的文件扩展名
		$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>102400));
		if($up->uploadFile('pic')){
			$filename = "images/SJ-".$up->getNewFileName();

			$agentIDQuery = $db->query("select id from lm_member where mb_type='2' and mb_name='".$_POST[agent]."'");
			$cnt = $db->db_num_rows();
			$agentID="0";
			if($cnt>0){
				$arr  = $db->fetch_array($agentIDQuery);
				$agentID = $arr[id];
			}

			$sql="insert into lm_sj(mb_id,agent_id,sj_name,sj_code,sj_pic,sj_desc,sj_type," .
				"address,telephone,fax,phone,qq,link_man,create_date,province,city,email,state,remark,url)" .
				" values('".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."','".$agentID."','$_POST[sj_name]','$_POST[sj_code]'," .
				"'$filename','$_POST[sj_desc]','$_POST[type]','$_POST[address]','$_POST[tel]','$_POST[fax]','$_POST[phone]','$_POST[qq]'," .
				"'$_POST[link_man]',now(),'$_POST[szSheng]','$_POST[szShi]','$_POST[email]','-1','$_POST[remark]','$_POST[url]')";
			$db->query($sql);

			echo "<script>location.href='../procatinfo.php?id=".$db->insert_id()."';</script>";
		}else{
			echo "<script>location.href='../agent.php?error=APM-2&mode=applySjAgent'</script>";
		}
	}else{
		echo "<script>location.href='../agent.php?error=APM-1&mode=applySjAgent'</script>";
	}
}else if(isset($_POST['task'])&&"applyAgentAgent"==$_POST['task']){
	require_once("../action/checkLogin.php");
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$db->query("update lm_member set mb_type='3',state='-1' where id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
		echo "<script>alert('申请成功,等待管理员审核!');location.href='../index.php'</script>";
	}else{
		echo "<script>location.href='../agent.php?error=APA-1&mode=applyAgent'</script>";
	}
}
?>
