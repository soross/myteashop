<?php
require_once("../action/checkLogin.php");
require_once ("../action/mysql.class.php");
//��Ա���������޸�
if(isset($_POST['task'])&&"updateMbInfo"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$query = $db->query("select * from lm_member where id = '" . $_POST['mbid'] . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
		if ($ps) {
			$db->query("update lm_member set email='$_POST[email]',realname='$_POST[realname]',idcard='$_POST[idcard]'," .
					"province='$_POST[szSheng]',city='$_POST[szShi]',address='$_POST[address]',phone='$_POST[phone]'," .
					"bankName='$_POST[bankName]',bankUser='$_POST[bankUser]',bankCode='$_POST[bankCode]' where id='" . $_POST['mbid'] . "'");
			echo "<script>alert('��Ա�޸ĳɹ�!');location.href='../index.php?divNo=1&flag=mb'</script>";

		}else{
			echo "<script>location.href='../index.php?error=MB-2&divNo=1&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=MB-1&divNo=1&flag=mb'</script>";
	}
}
//��Ҫ����
else if(isset($_POST['task'])&&"getHongLi"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$cardNo = str_replace(" ", "", $_POST['no']);
		$query = $db->query("select * from lm_card where state=0 and cardno = '" . $cardNo . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps) {
			$msg="�ɹ���ȡ����!";
			$service_code = "GetHongLi";
			$num=0;
			if($row['type']==2){
				$num = $row['type']*50;
				$sql="update lm_mb_limit set not_hongli=not_hongli+".$num." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
				$msg="�ɹ���ȡ����!";
				$service_code = "GetNotHongLi";
				addNotHongLi($db,$num);
			}else{
				$num = $row['type']/10;
				$sql="update lm_mb_limit set hongli=hongli+".$num." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
				addHongLi($db,$num);
			}
			$db->query($sql);
			$db->query("update lm_card set state=1,use_mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' where id='$row[id]'");

			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"100�������һ�",$num,"OK",$cardNo,"+","A");

			echo "<script>alert('".$msg."');location.href='../index.php?divNo=2&flag=mb'</script>";
		}else{
			echo "<script>location.href='../index.php?error=HL-2&divNo=2&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=HL-1&divNo=2&flag=mb'</script>";
	}
}
//��Ҫ����
else if(isset($_POST['task'])&&"getJiFen"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$cardNo = str_replace(" ", "", $_POST['no']);
		$query = $db->query("select * from lm_card where state=0 and cardno = '" . $cardNo . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps) {
			$service_code = "GetJiFen";
			$num = $row['type']*50;
			$sql="update lm_mb_limit set jifen=jifen+".$num." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
			$msg="�ɹ���ȡ����!";

			$db->query($sql);
			$db->query("update lm_card set state=1,use_mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' where id='$row[id]'");

			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],$num."�������һ�",$num,"OK",$cardNo,"+","A");

			echo "<script>alert('".$msg."');location.href='../index.php?divNo=2&flag=mb'</script>";
		}else{
			echo "<script>location.href='../index.php?error=JF-2&divNo=20&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=JF-1&divNo=20&flag=mb'</script>";
	}
}
//�ҵĻ��� ����->����JiFen2HongLi
else if(isset($_POST['task'])&&"JiFen2HongLi"==$_POST['task']){
	$query = $db->query("select * from lm_member where id = '".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
	$us = is_array($row = $db->fetch_array($query));
	$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
	if ($ps) {
		if($_POST[hongli]>$_POST[srchongli]){
			echo "<script>location.href='../index.php?error=JF2HL-2&divNo=3&flag=mb'</script>";
		}else{
			$query = $db->query("update lm_mb_limit set hongli = hongli+".$_POST[hongli]." ,jifen=jifen-".($_POST[hongli]*500)." where id = '".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			addHongLi($db,$_POST[hongli]);
			echo "<script>alert('�һ��ɹ�!');location.href='../index.php?divNo=3&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=JF2HL-1&divNo=3&flag=mb'</script>";
	}


}
//����
else if(isset($_POST['task'])&&"getMoney"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$sql = "select * from lm_member where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
		$query = $db->query($sql);
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps && $_POST[num] >= 500) {
			$cnt = $_POST[num];
			$query = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$limit = $db->fetch_array($query);
			if(($limit[money]*0.8)>= $cnt){
				$db->query("update lm_mb_limit set money=money-" .($cnt/0.8) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			}else if((($limit[money]*0.8)+($limit[sale_money]*0.8))>= $cnt){
				$tmp = $cnt-($limit[money]*0.8);
				$db->query("update lm_mb_limit set money=0,sale_money=sale_money-".($tmp/0.8)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			}else if((($limit[money]*0.8)+($limit[sale_money]*0.8)+$limit[exchange])>= $cnt){
				$tmp = $cnt- (($limit[money]*0.8) + ($limit[sale_money]*0.8));
				$db->query("update lm_mb_limit set money=0,sale_money=0,exchange=exchange-".($tmp)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			}else{
				echo "<script>location.href='../index.php?error=TX-3&divNo=6&flag=mb'</script>";
				exit;
			}

			$db->query("insert into lm_mb_money(mb_id,num,create_date,bankname,bankuser,bankcode) values('".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."','$_POST[num]',now(),'$row[bankName]','$row[bankUser]','$row[bankCode]')");
			$orderNo=randNum();
			Save_log($db,"GetMoney",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����",$cnt,"OK","","ADD",$orderNo);
			echo "<script>alert('���������ύ�ɹ�!');location.href='../index.php?divNo=6&flag=mb'</script>";
		}else{
			echo "<script>location.href='../index.php?error=TX-2&divNo=6&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=TX-1&divNo=6&flag=mb'</script>";
	}
}
//ת��
else if(isset($_POST['task'])&&"getMoneyToMb"==$_POST['task']){
	$sql = "select * from lm_member where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
	$query = $db->query($sql);
	$us = is_array($row = $db->fetch_array($query));
	$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
	if ($ps) {

		$mbquery = $db->query("select * from lm_member where mb_name='".$_POST[username]."'");
		if($db->db_num_rows()==1){
			$mbinfo = $db->fetch_array($mbquery);
			$query = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$limit = $db->fetch_array($query);
			$cnt = $_POST[num];
			$service_code="GetMoneyToMb";
			if($_POST[type]=='1'){
				if(($limit[money])>= $cnt){
					$db->query("update lm_mb_limit set money=money-" .($cnt) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
					$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");
				}else if((($limit[money])+($limit[sale_money]))>= $cnt){
					$tmp = $cnt-($limit[money]);
					$db->query("update lm_mb_limit set money=0,sale_money=sale_money-".($tmp)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
					$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");
				}else if((($limit[money])+($limit[sale_money])+$limit[exchange])>= $cnt){
					$tmp = $cnt- (($limit[money]) + ($limit[sale_money]));
					$db->query("update lm_mb_limit set money=0,sale_money=0,exchange=exchange-".($tmp)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
					$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");
				}else{
					echo "<script>location.href='../index.php?error=ZZ-3&divNo=21&flag=mb'</script>";
					exit;
				}
			}else{
				if($limit[jifen]>= $cnt){
					$db->query("update lm_mb_limit set jifen=jifen-" .($cnt) ." where mb_id='".$mbinfo[id]."'");
					$db->query("update lm_mb_limit set jifen=jifen+" .($cnt) ." where mb_id='".$mbinfo[id]."'");
				}else{
					echo "<script>location.href='../index.php?error=ZZ-2&divNo=21&flag=mb'</script>";
					exit;
				}
				$service_code = "GetJiFenToMb";
			}
			$orderNo=randNum();
			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"ת��".$mbinfo[mb_name],$cnt,"OK","","ADD",$orderNo);
			echo "<script>alert('�ɹ�ת��!');location.href='../index.php?divNo=21&flag=mb'</script>";
		}else{
			echo "<script>location.href='../index.php?error=ZZ-4&divNo=21&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=ZZ-1&divNo=21&flag=mb'</script>";
	}
}

//QA
else if(isset($_POST['task'])&&"QA"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$db->query("insert into lm_qa(title,content,mb_id,create_Date,state,type) values('$_POST[title]','$_POST[content]','".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."',now(),'0','0')");
		echo "<script>alert('�����ѷ���!');location.href='../index.php?divNo=9&flag=mb'</script>";
	}else{
		echo "<script>location.href='../index.php?error=QA-1&divNo=9&flag=mb'</script>";
	}
}
//SJ_QA
else if(isset($_POST['task'])&&"SJ_QA"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$db->query("insert into lm_qa(title,content,mb_id,create_Date,state,type) values('$_POST[title]','$_POST[content]','".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."',now(),'0','1')");
		echo "<script>alert('�����ѷ���!');location.href='../index.php?divNo=17&flag=sj'</script>";
	}else{
		echo "<script>location.href='../index.php?error=QA-1&divNo=17&flag=sj'</script>";
	}
}
//���ݾ������޸�����ModifyPasswordByOldPassword
else if(isset($_POST['task'])&&"ModifyPasswordByOldPassword"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		if($_POST[password]==$_POST[password2]){
			$query = $db->query("select * from lm_member where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$us = is_array($row = $db->fetch_array($query));
			$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
			if ($ps) {
				$db->query("update lm_member set password='".md5($_POST[password])."' where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				echo "<script>alert('�����޸ĳɹ�!');location.href='../index.php?divNo=10&flag=mb'</script>";

			}else{//���������
				echo "<script>location.href='../index.php?error=MP-3&divNo=10&flag=mb'</script>";
			}
		}else{//���벻һ��
			echo "<script>location.href='../index.php?error=MP-2&divNo=10&flag=mb'</script>";
		}
	}else{//��֤�����
		echo "<script>location.href='../index.php?error=MP-1&divNo=10&flag=mb'</script>";
	}
}
//���������޸�����ModifyPasswordBySecondPassword
else if(isset($_POST['task'])&&"ModifyPasswordBySecondPassword"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		if($_POST[password]==$_POST[password2]){
			$query = $db->query("select * from lm_member where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$us = is_array($row = $db->fetch_array($query));
			$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
			if ($ps) {
				$db->query("update lm_member set password='".md5($_POST[password])."' where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				echo "<script>alert('�����޸ĳɹ�!');location.href='../index.php?divNo=10&flag=mb'</script>";

			}else{//�����������
				echo "<script>location.href='../index.php?error=MP-4&divNo=10&flag=mb'</script>";
			}
		}else{//���벻һ��
			echo "<script>location.href='../index.php?error=MP-2&divNo=10&flag=mb'</script>";
		}
	}else{//��֤�����
		echo "<script>location.href='../index.php?error=MP-1&divNo=10&flag=mb'</script>";
	}
}
//�����޸Ķ�������ModifyPasswordByQuestion
else if(isset($_POST['task'])&&"ModifyPasswordByQuestion"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		if($_POST[password]==$_POST[password2]){
			$query = $db->query("select * from lm_member where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$us = is_array($row = $db->fetch_array($query));
			$ps = $us ? $_POST[answer] == $row[answer] : FALSE;
			if ($ps) {
				$db->query("update lm_member set second_password='".md5($_POST[password])."' where id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				echo "<script>alert('���������޸ĳɹ�!');location.href='../index.php?divNo=10&flag=mb'</script>";
			}else{//�������
				echo "<script>location.href='../index.php?error=MP-5&divNo=10&flag=mb'</script>";
			}
		}else{//���벻һ��
			echo "<script>location.href='../index.php?error=MP-2&divNo=10&flag=mb'</script>";
		}
	}else{//��֤�����
		echo "<script>location.href='../index.php?error=MP-1&divNo=10&flag=mb'</script>";
	}
}
//*******************************************
//�̼һ��������޸�
else if(isset($_POST['task'])&&"updateSjInfo"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		$query = $db->query("select * from lm_member where id = '" . $_POST['mbid'] . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
		if ($ps) {
			$db->query("update lm_sj set sj_name='$_POST[sj_name]',sj_type='$_POST[sj_type]',phone='$_POST[phone]'," .
					"province='$_POST[szSheng]',city='$_POST[szShi]',address='$_POST[address]',link_man='$_POST[link_man]'," .
					"email='$_POST[email]' where id='" . $_POST['sjid'] . "'");
			echo "<script>alert('�̼���Ϣ�޸ĳɹ�!');location.href='../index.php?divNo=12&flag=sj'</script>";

		}else{
			echo "<script>location.href='../index.php?error=SJ-2&divNo=12&flag=sj'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=SJ-1&divNo=12&flag=sj'</script>";
	}
}

//�̼�������Ϣ
else if(isset($_POST['task'])&&"addProduct"==$_POST['task']){
	if (isset ($_POST['random']) && $_POST["random"] == $_SESSION['validationcode']) {
		//�ļ�����Ŀ¼URL
		$save_path = '../images/';
		//���������ϴ����ļ���չ��
		$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>1048576));
		if($up->uploadFile('pic_file')){
			$filename = "images/".$up->getNewFileName();
			$sql="insert into lm_sj_mc(sj_id,mc_name,mc_type,mc_desc,mc_pic,mc_price,mc_price_type,mc_count,end_date,create_date,state) ".
				 "values('$_POST[sjid]','$_POST[mc_name]','$_POST[type]','$_POST[mc_desc]','$filename','$_POST[price]','$_POST[price_type]','$_POST[count]','$_POST[end_date]',now(),'0')";
			$db->query($sql);
	  		echo "<script>if(confirm('��ӳɹ�,�Ƿ�������?')){location.href='../index.php?divNo=13&flag=sj';}else{location.href='../index.php?divNo=14&flag=sj';}</script>";
		}else{
			print_r($up->getErrorMsg());
			echo "<script>location.href='../index.php?AP-2&divNo=13&flag=sj;</script>";
		}
	}else{//��֤�����
		echo "<script>location.href='../index.php?error=AP-1&divNo=13&flag=sj'</script>";
	}
}
//�̼�ͨ�����
else if(isset($_GET['task'])&&"PassAuthSj"==$_GET['task']){
	$db->query("update lm_sj set state='0' where id='".$_GET[sjid]."'");
	echo "<script>alert('��˳ɹ�!');location.href='../index.php?divNo=18&flag=auth';</script>";
}
//δͨ�����
else if(isset($_GET['task'])&&"BackAuthSj"==$_GET['task']){
	$db->query("update lm_sj set state='-2' where id='".$_GET[sjid]."'");
	echo "<script>alert('�˻سɹ�!');location.href='../index.php?divNo=18&flag=auth';</script>";
}











//���������ܺ���Ȩ��
function addHongLi($db,$cnt){
	$db->query("update lm_mb_limit set hongli=hongli+$cnt where id='0'");
}
//��������δ�ֺ���
function addNotHongLi($db,$cnt){
	$db->query("update lm_mb_limit set not_hongli=not_hongli+$cnt where id='0'");
}
?>
