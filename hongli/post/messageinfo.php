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
		$query = $db->query("select * from lm_card where state='0' and create_card='1' and cardno = '" . $cardNo . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? (md5($_POST[password]) == $row[password] ) : FALSE;
		if ($ps) {
			$msg="�ɹ���ȡ����!";
			$service_code = "GetHongLi";
			$num=0;
			if($row['type']==2){
				echo "<script>location.href='../index.php?error=HL-3&divNo=2&flag=mb'</script>";
				exit;
			}else{
				$num = $row['type']/10;
				$sql="update lm_mb_limit set hongli=hongli+".$num." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
				addHongLi($db,$num);
				addSaleMoney($db,($row['type']*50));
			}
			$db->query($sql);
			$db->query("update lm_card set use_date=now(), state=1,use_mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' where id='$row[id]'");

			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"�������һ�",$num,"OK",$cardNo,"+","A");

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
		$query = $db->query("select * from lm_card where state='0' and create_card='1' and cardno = '" . $cardNo . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps) {
			$service_code = "GetJiFen";
			$num = $row['type']*50;
			$sql="update lm_mb_limit set jifen=jifen+".$num." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'";
			$msg="�ɹ���ȡ����!";

			$db->query($sql);
			$db->query("update lm_card set use_date=now(),state=1,use_mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' where id='$row[id]'");

			addSaleMoney($db,$num);

			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],$num."�������һ�",$num,"OK",$cardNo,"+","A");


			echo "<script>alert('".$msg."');location.href='../index.php?divNo=20&flag=mb'</script>";
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
		if(($_POST[hongli]*500)>$_POST[allJfTotal]){
			echo "<script>location.href='../index.php?error=JF2HL-2&divNo=3&flag=mb'</script>";
		}else{

			$db->query("update lm_mb_limit set hongli = hongli+".$_POST[hongli]." ,jifen=jifen-".($_POST[hongli]*500)." where mb_id = '".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");

			addHongLi($db,$_POST[hongli]);
			addSaleMoney($db,($_POST[hongli]*500));

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
		$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
		if ($ps && $_POST[num] >= 40) {
			$cnt = $_POST[num];
			$query = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$limit = $db->fetch_array($query);
			if(($limit[money]*0.8)>= $cnt){
				$db->query("update lm_mb_limit set money=money-" .($cnt/0.8) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			}else if((($limit[money]*0.8)+($limit[sale_money]*0.85))>= $cnt){
				$tmp = $cnt-($limit[money]*0.8);
				$db->query("update lm_mb_limit set money=0,sale_money=sale_money-".($tmp/0.85)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			}else if((($limit[money]*0.8)+($limit[sale_money]*0.85)+($limit[exchange]*0.95))>= $cnt){
				$tmp = $cnt- (($limit[money]*0.8) + ($limit[sale_money]*0.85));
				$db->query("update lm_mb_limit set money=0,sale_money=0,exchange=exchange-".($tmp/0.95)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
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
	$ps = $us ? md5($_POST[password]) == $row[second_password] : FALSE;
	if ($ps) {
		$mbquery = $db->query("select * from lm_member where mb_name='".$_POST[username]."'");
		if($db->db_num_rows()==1){
			$mbinfo = $db->fetch_array($mbquery);
			$query = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
			$limit = $db->fetch_array($query);
			$cnt = $_POST[num];
			$jfcnt = $_POST[jifennum];

			if(empty($_POST[num]) || ""== $_POST[num]){
				$cnt=0;
			}
			if(empty($_POST[jifennum]) || ""== $_POST[jifennum]){
				$jfcnt=0;
			}
			if(($limit[money])>= $cnt && $limit[jifen]>= $jfcnt){
				$db->query("update lm_mb_limit set money=money-" .($cnt) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");


				$db->query("update lm_mb_limit set jifen=jifen-" .($jfcnt) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set jifen=jifen+" .($jfcnt) ." where mb_id='".$mbinfo[id]."'");


			}else if((($limit[money])+($limit[sale_money]))>= $cnt && $limit[jifen]>= $jfcnt){
				$tmp = $cnt-($limit[money]);
				$db->query("update lm_mb_limit set money=0,sale_money=sale_money-".($tmp)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");

				$db->query("update lm_mb_limit set jifen=jifen-" .($jfcnt) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set jifen=jifen+" .($jfcnt) ." where mb_id='".$mbinfo[id]."'");


			}else if((($limit[money])+($limit[sale_money])+$limit[exchange])>= $cnt && $limit[jifen]>= $jfcnt){
				$tmp = $cnt- (($limit[money]) + ($limit[sale_money]));
				$db->query("update lm_mb_limit set money=0,sale_money=0,exchange=exchange-".($tmp)." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set money=money+" .($cnt) ." where mb_id='".$mbinfo[id]."'");

				$db->query("update lm_mb_limit set jifen=jifen-" .($jfcnt) ." where mb_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."'");
				$db->query("update lm_mb_limit set jifen=jifen+" .($jfcnt) ." where mb_id='".$mbinfo[id]."'");

			}else{
				if($limit[jifen]< $jfcnt){
					echo "<script>location.href='../index.php?error=ZZ-2&divNo=21&flag=mb'</script>";
					exit;
				}else{
					echo "<script>location.href='../index.php?error=ZZ-3&divNo=21&flag=mb'</script>";
					exit;
				}
			}

			$orderNo=randNum();

			$service_code="GetMoneyToMb";
			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"ת��".$mbinfo[mb_name],$cnt,"OK","","ADD",$orderNo);

			$service_code = "GetJiFenToMb";
			Save_log($db,$service_code,$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"ת��".$mbinfo[mb_name],$cnt,"OK","","ADD",$orderNo);


			echo "<script>alert('�ɹ�ת��!');location.href='../index.php?divNo=21&flag=mb'</script>";
		}else{
			echo "<script>location.href='../index.php?error=ZZ-4&divNo=21&flag=mb'</script>";
		}
	}else{
		echo "<script>location.href='../index.php?error=ZZ-1&divNo=21&flag=mb'</script>";
	}
}
//ȡ���ղ�task=cancelSc&scid=
else if(isset($_GET['task'])&&"cancelSc"==$_GET['task']){
	$db->query("delete from lm_mb_sc where id='".$_GET[scid]."'");
	echo "<script>alert('�ɹ�ȡ���ղ�!');location.href='../index.php?divNo=7&flag=mb'</script>";
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
			$ps = $us ? md5($_POST[oldpassword]) == $row[password] : FALSE;
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
			$ps = $us ? md5($_POST[secondpassword]) == $row[second_password] : FALSE;
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
			//�ļ�����Ŀ¼URL
			$save_path = '../images/';
			//���������ϴ����ļ���չ��
			$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
			require "../action/FileUpload.class.php";
			$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>102400));
			if($up->uploadFile('pic')){
				$filename = "images/".$up->getNewFileName();

				/**
				$sql="insert into lm_sj(mb_id,agent_id,sj_name,sj_code,sj_pic,sj_desc,sj_type," .
					"address,telephone,fax,phone,qq,link_man,create_date,province,city,email,state,remark,url)" .
					" values('".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."','".$agentID."','$_POST[sj_name]','$_POST[sj_code]'," .
					"'$filename','$_POST[sj_desc]','$_POST[type]','$_POST[address]','$_POST[tel]','$_POST[fax]','$_POST[phone]','$_POST[qq]'," .
					"'$_POST[link_man]',now(),'$_POST[szSheng]','$_POST[szShi]','$_POST[email]','-1','$_POST[remark]','$_POST[url]')";
				**/

				$imgQuery = $db->query("select * from lm_sj where id='" . $_POST['sjid'] . "'");
				$imgRow = $db->fetch_array($imgQuery);

				$db->query("update lm_sj set sj_name='$_POST[sj_name]',sj_type='$_POST[sj_type]',province='$_POST[szSheng]',city='$_POST[szShi]'," .
					"sj_desc='$_POST[sj_desc]',sj_pic='$filename',link_man='$_POST[link_man]',telephone='$_POST[tel]',phone='$_POST[phone]'," .
					"fax='$_POST[fax]',email='$_POST[email]',qq='$_POST[qq]',address='$_POST[address]',url='$_POST[url]' where id='" . $_POST['sjid'] . "'");

				unlink('../'.$imgRow[sj_pic]);
				echo "<script>alert('�̼���Ϣ�޸ĳɹ�!');location.href='../index.php?divNo=12&flag=sj'</script>";
			}else{
				$db->query("update lm_sj set sj_name='$_POST[sj_name]',sj_type='$_POST[sj_type]',province='$_POST[szSheng]',city='$_POST[szShi]'," .
					"sj_desc='$_POST[sj_desc]',link_man='$_POST[link_man]',telephone='$_POST[tel]',phone='$_POST[phone]'," .
					"fax='$_POST[fax]',email='$_POST[email]',qq='$_POST[qq]',address='$_POST[address]',url='$_POST[url]' where id='" . $_POST['sjid'] . "'");
				echo "<script>alert('�̼�������Ϣ�޸ĳɹ�,�̼�ͼƬû���޸Ļ�ͼƬ�޸�ʧ��!');location.href='../index.php?divNo=12&flag=sj'</script>";
			}
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
		$cnt = 0;
		if($_POST[type]=="product"){
			$type='0';
			$query = $db->query("select id from lm_sj_mc where mc_type='$type' and sj_id='$_POST[sjid]'");
			$cnt = $db->db_num_rows($query);
		}else if($_POST[type]=="mc"){
			$type='1';
			$query = $db->query("select id from lm_sj_mc where mc_type='$type' and sj_id='$_POST[sjid]'");
			$cnt = $db->db_num_rows($query);
		}else{
			echo "<script>alert('�Ƿ�����!');location.href='../login.php';</script>";
			exit;
		}
		if($cnt>2){
			echo "<script>alert('���ֻ�ܷ���3����Ϣ!');location.href='../index.php?divNo=13&flag=sj';</script>";
			exit;
		}
		//�ļ�����Ŀ¼URL
		$save_path = '../images/';
		//���������ϴ����ļ���չ��
		$ext_arr = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>102400));
		if($up->uploadFile('pic_file')){
			$filename = "images/".$up->getNewFileName();
			$sql="insert into lm_sj_mc(sj_id,mc_name,mc_type,mc_desc,mc_pic,mc_price,mc_price_type,mc_count,create_date,state) ".
				 "values('$_POST[sjid]','$_POST[mc_name]','$type','$_POST[mc_desc]','$filename','$_POST[price]','$_POST[price_type]','$_POST[count]',now(),'0')";
			$db->query($sql);
	  		echo "<script>if(confirm('���ӳɹ�,�Ƿ��������?')){location.href='../index.php?divNo=13&flag=sj';}else{location.href='../index.php?divNo=14&flag=sj';}</script>";
		}else{
			print_r($up->getErrorMsg());
			echo "<script>location.href='../index.php?AP-2&divNo=13&flag=sj;</script>";
		}
	}else{//��֤�����
		echo "<script>location.href='../index.php?error=AP-1&divNo=13&flag=sj'</script>";
	}
}
//deleteMc
else if(isset($_GET['task'])&&"deleteMc"==$_GET['task']){
	$imgQuery = $db->query("select * from lm_sj_mc where id='" . $_GET['mcid'] . "'");
	$imgRow = $db->fetch_array($imgQuery);
	$db->query("delete from lm_sj_mc where id='" . $_GET['mcid'] . "'");
	unlink("../".$imgRow[mc_pic]);
	echo "<script>alert('�ɹ�ɾ����Ʒ!');location.href='../index.php?divNo=14&flag=sj'</script>";
}


//�̼�ͨ�����
else if(isset($_GET['task'])&&"PassAuthSj"==$_GET['task']){
	$query = $db->query("select mb_id from lm_sj where id='".$_GET[sjid]."'");
	$row = $db->fetch_array($query);

	$db->query("update lm_member set mb_type=state, state=0 where id = '".$row[mb_id]."'");
	$db->query("update lm_sj set state='0' where id='".$_GET[sjid]."'");
	echo "<script>alert('��˳ɹ�!');location.href='../index.php?divNo=18&flag=auth';</script>";
}
//δͨ�����
else if(isset($_GET['task'])&&"BackAuthSj"==$_GET['task']){
	$db->query("update lm_member set state=0 where id = '".$row[mb_id]."'");
	$db->query("delete from lm_sj where id='".$_GET[sjid]."'");

	echo "<script>alert('�˻سɹ�!');location.href='../index.php?divNo=18&flag=auth';</script>";
}

//ȷ������sendProduct orderid
else if(isset($_GET['task'])&&"sendProduct"==$_GET['task']){
	$db->query("update lm_order set state='1' where id='".$_GET[orderid]."'");
	echo "<script>alert('�����ɹ�!');location.href='../index.php?divNo=15&flag=sj';</script>";
}

//ȷ���ջ�confirmProduct&orderid
else if(isset($_GET['task'])&&"confirmProduct"==$_GET['task']){
	$db->query("update lm_order set state='2' where id='".$_GET[orderid]."'");
	echo "<script>alert('ȷ���ջ��ɹ�!');location.href='../index.php?divNo=11&flag=mb';</script>";
}









//���������ܺ���Ȩ��
function addHongLi($db,$cnt){
	$db->query("update lm_limit set hongli=hongli+$cnt,dayhongli=dayhongli+$cnt where id='1'");
}
//��������δ�ֺ���
function addNotHongLi($db,$cnt){
	$db->query("update lm_limit set not_hongli=not_hongli+$cnt where id='1'");
}

function addSaleMoney($db,$cnt){
	//�������˵��������
	$db->query("update lm_limit set sale_money=sale_money+".$cnt." where id='1'");
}
?>