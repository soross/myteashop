<?php
require_once ("../action/checkLogin.php");
require_once ("../action/mysql.class.php");
//����
if(isset($_POST['task'])&&"BuyMc"==$_POST['task']){
	$mcid = $_POST[mcid];
	$cntQuery = $db->query("select * from lm_sj_mc where id=$mcid");
	if($db->db_num_rows($cntQuery)>0){
		$mcInfo = $db->fetch_array($mcQuery);//��Ʒ��Ϣ
		if($_POST[mbid]==$_SESSION['WEB_USER_LOGIN_UID_SESSION']){
			echo "<script>alert('�����ܹ����Լ��Ĳ�Ʒ!');location.href='../mcinfo.php?mcid=$mcid'</script>";
			exit;
		}
		if($mcInfo[mc_count]<0){
			echo "<script>alert('����������,�ò�Ʒ�Ѿ�������!');location.href='../mcinfo.php?mcid=$mcid'</script>";
			$db->query("update lm_sj_mc set state='state' where id='$mcid'");
			exit;
		}else{
			//��Ա�ʽ�
			$limit_sql = "select * from lm_mb_limit where mb_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'";
			$limitQuery = $db->query($limit_sql);
			$limitInfo = $db->fetch_array($limitQuery);

			//�жϺ����Ƿ��㹻
			if($mcInfo[mc_price]>($limitInfo[money]+$limitInfo[sale_money]+$limitInfo[exchange])){
				echo "<script>alert('���ĺ�������,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}
			//�жϻ����Ƿ��㹻
			if($mcInfo[mc_price_type]>$limitInfo[jifen]){
				echo "<script>alert('���Ļ��ֲ���,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}

			//��һ�Ա����
			$mbinfoQuery = $db->query("select mb_name from lm_member where id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
			$mbInfo = $db->fetch_array($mbinfoQuery);

			//���һ�Ա����
			$sjInfoQuery = $db->query("select s.sj_name,m.id from lm_sj_mc c ,lm_sj s,lm_member m where c.sj_id=s.id and s.mb_id=m.id and c. id='$mcid'");
			$sjInfo = $db->fetch_array($sjInfoQuery);
			$orderID=randNum();//������
			$db->query("INSERT INTO `lm_order`(`order_id`,`mb_id`,`mc_id`,`sj_id`,`create_date`,`price`,`price_type`,`state`," .
					"`mb_name`,`mc_name`,`sj_name`,`sj_mb_id`) VALUES ('$orderID', '".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."', " .
					"'$mcid', '$mcInfo[sj_id]', 'now()', '$mcInfo[mc_price]', '$mcInfo[mc_price_type]', '0'," .
					"'$mbInfo[mb_name]','$mcInfo[mc_name]','$sjInfo[sj_name]','$sjInfo[id]')");


			//��Ҽ�ȥ�����ͻ���
			$sql="";
			if($limitInfo[money]>= $mcInfo[mc_price]){
				$sql = "update lm_mb_limit set money=money-".$mcInfo[mc_price].",";
			}else if($limitInfo[money]< $mcInfo[mc_price] && ($limitInfo[money]+ $limitInfo[sale_money]) >= $mcInfo[mc_price]){
				$tmp = $mcInfo[mc_price]-$limitInfo[money];
				$sql = "update lm_mb_limit set money='0',sale_money = sale_money-".$tmp.",";
			}else if(($limitInfo[money]+ $limitInfo[sale_money])< $mcInfo[mc_price] && ($limitInfo[money]+ $limitInfo[sale_money] + $limitInfo[exchange]) >= $mcInfo[mc_price] ){
				$tmp = $mcInfo[mc_price]-($limitInfo[money]+ $limitInfo[sale_money]);
				$sql = "update lm_mb_limit set money='0',sale_money = '0',exchange = exchange-".$tmp.",";
			}else{
				echo "<script>alert('���ĺ�������,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}
			$db->query($sql."jifen=jifen+".($mcInfo[mc_price]-$mcInfo[mc_price_type]).",hongli=hongli+".floor ($mcInfo[mc_price]/500)." where mb_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
			//д��־
			Save_log($db,"GetJiFen",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."����".$mcInfo[mc_price_type]."����",$mcInfo[mc_price_type],"OK","","-",$orderID);
			Save_log($db,"GetMoney",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."����".$mcInfo[mc_price]."����",$mcInfo[mc_price],"OK","","-",$orderID);
			Save_log($db,"GetNotHongLi",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".($mcInfo[mc_price]%500)."δ�ֺ���",$mcInfo[mc_price]%500,"OK","","+",$orderID);
			Save_log($db,"GetHongLi",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".(floor ($mcInfo[mc_price]/500))."����",floor ($mcInfo[mc_price]/500),"OK","","+",$orderID);
			Save_log($db,"GetJiFen",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".($mcInfo[mc_price])."����",$mcInfo[mc_price],"OK","","+",$orderID);
			//������������
			$db->query("update lm_mb_limit set sale_money=sale_money+".$mcInfo[mc_price]." where mb_id='".$_POST[mbid]."'");
			Save_log($db,"GetSaleMoney",$_POST[mbid],"����".$mcInfo[mc_name]."���".$mcInfo[mc_price]."���۶�",$mcInfo[mc_price],"OK","","+",$orderID);

			//������Ʒ������
			if($mcInfo[mc_count]<2){
				$db->query("update lm_sj_mc set mc_count='0',state='-2' where id='$mcid'");
			}else{
				$db->query("update lm_sj_mc set mc_count=mc_count-1 where id='$mcid'");
			}

			//�������˵��������,sale_money=sale_money+".$mcInfo[mc_price]."
			$db->query("update lm_limit set hongli=hongli+".(floor ($mcInfo[mc_price]/500)).",dayhongli=dayhongli+".(floor ($mcInfo[mc_price]/500))." where id='1'");

			echo "<script>location.href='../index.php?divNo=11&flag=mb'</script>";

		}
	}else{
		session_destroy();
		echo "<script>alert('�Ƿ�����,�����µ���������!');location.href='../login.php'</script>";
	}
}else if(isset($_POST['task'])&&"BuyProduct"==$_POST['task']){
	$mcid = $_POST[mcid];
	$cntQuery = $db->query("select * from lm_sj_mc where id=$mcid");
	if($db->db_num_rows($cntQuery)>0){
		$mcInfo = $db->fetch_array($mcQuery);//��Ʒ��Ϣ
		if($_POST[mbid]==$_SESSION['WEB_USER_LOGIN_UID_SESSION']){
			echo "<script>alert('�����ܹ����Լ��Ĳ�Ʒ!');location.href='../mcinfo.php?mcid=$mcid'</script>";
			exit;
		}
		if($mcInfo[mc_count]<0){
			echo "<script>alert('����������,�ò�Ʒ�Ѿ�������!');location.href='../mcinfo.php?mcid=$mcid'</script>";
			$db->query("update lm_sj_mc set state='state' where id='$mcid'");
			exit;
		}else{
			//��Ա�ʽ�
			$limit_sql = "select * from lm_mb_limit where mb_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'";
			$limitQuery = $db->query($limit_sql);
			$limitInfo = $db->fetch_array($limitQuery);

			//�жϺ����Ƿ��㹻
			if($mcInfo[mc_price]>($limitInfo[money]+$limitInfo[sale_money]+$limitInfo[exchange])){
				echo "<script>alert('���ĺ�������,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}
			//�жϻ����Ƿ��㹻
			if($mcInfo[mc_price_type]>$limitInfo[jifen]){
				echo "<script>alert('���Ļ��ֲ���,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}

			//��һ�Ա����
			$mbinfoQuery = $db->query("select mb_name from lm_member where id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
			$mbInfo = $db->fetch_array($mbinfoQuery);

			//���һ�Ա����
			$sjInfoQuery = $db->query("select s.sj_name,m.id from lm_sj_mc c ,lm_sj s,lm_member m where c.sj_id=s.id and s.mb_id=m.id and c. id='$mcid'");
			$sjInfo = $db->fetch_array($sjInfoQuery);
			$orderID=randNum();//������
			$db->query("INSERT INTO `lm_order`(`order_id`,`mb_id`,`mc_id`,`sj_id`,`create_date`,`price`,`price_type`,`state`," .
					"`mb_name`,`mc_name`,`sj_name`,`sj_mb_id`,`mode`) VALUES ('$orderID', '".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."', " .
					"'$mcid', '$mcInfo[sj_id]', now(), '$mcInfo[mc_price]', '$mcInfo[mc_price_type]', '0'," .
					"'$mbInfo[mb_name]','$mcInfo[mc_name]','$sjInfo[sj_name]','$sjInfo[id]','1')");


			//��Ҽ�ȥ�����ͻ���
			$sql="";
			if($limitInfo[money]>= $mcInfo[mc_price]){
				$sql = "update lm_mb_limit set money=money-".$mcInfo[mc_price].",";
			}else if($limitInfo[money]< $mcInfo[mc_price] && ($limitInfo[money]+ $limitInfo[sale_money]) >= $mcInfo[mc_price]){
				$tmp = $mcInfo[mc_price]-$limitInfo[money];
				$sql = "update lm_mb_limit set money='0',sale_money = sale_money-".$tmp.",";
			}else if(($limitInfo[money]+ $limitInfo[sale_money])< $mcInfo[mc_price] && ($limitInfo[money]+ $limitInfo[sale_money] + $limitInfo[exchange]) >= $mcInfo[mc_price] ){
				$tmp = $mcInfo[mc_price]-($limitInfo[money]+ $limitInfo[sale_money]);
				$sql = "update lm_mb_limit set money='0',sale_money = '0',exchange = exchange-".$tmp.",";
			}else{
				echo "<script>alert('���ĺ�������,����ò�Ʒʧ��!');location.href='../mcinfo.php?mcid=$mcid'</script>";
				exit;
			}
			$db->query($sql."jifen=jifen+".($mcInfo[mc_price]-$mcInfo[mc_price_type]).",hongli=hongli+".floor ($mcInfo[mc_price]/500)." where mb_id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
			//д��־
			Save_log($db,"GetJiFen",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."����".$mcInfo[mc_price_type]."����",$mcInfo[mc_price_type],"OK","","-",$orderID);
			Save_log($db,"GetMoney",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."����".$mcInfo[mc_price]."����",$mcInfo[mc_price],"OK","","-",$orderID);
			Save_log($db,"GetNotHongLi",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".($mcInfo[mc_price]%500)."δ�ֺ���",$mcInfo[mc_price]%500,"OK","","+",$orderID);
			Save_log($db,"GetHongLi",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".(floor ($mcInfo[mc_price]/500))."����",floor ($mcInfo[mc_price]/500),"OK","","+",$orderID);
			Save_log($db,"GetJiFen",$_SESSION['WEB_USER_LOGIN_UID_SESSION'],"����".$mcInfo[mc_name]."���".($mcInfo[mc_price])."����",$mcInfo[mc_price],"OK","","+",$orderID);

			//������������
			$db->query("update lm_mb_limit set exchange=exchange+".$mcInfo[mc_price]." where mb_id='".$_POST[mbid]."'");
			Save_log($db,"GetSaleMoney",$_POST[mbid],"����".$mcInfo[mc_name]."���".$mcInfo[mc_price]."���۶�",$mcInfo[mc_price],"OK","","+",$orderID);

			//������Ʒ������
			if($mcInfo[mc_count]<2){
				$db->query("update lm_sj_mc set mc_count='0',state='-2' where id='$mcid'");
			}else{
				$db->query("update lm_sj_mc set mc_count=mc_count-1 where id='$mcid'");
			}

			//�������˵��������,exchange=exchange+".$mcInfo[mc_price]."
			$db->query("update lm_limit set hongli=hongli+".(floor ($mcInfo[mc_price]/500)).",dayhongli=dayhongli+".(floor ($mcInfo[mc_price]/500))." where id='1'");

			echo "<script>location.href='../index.php?divNo=11&flag=mb'</script>";
		}
	}else{
		session_destroy();
		echo "<script>alert('�Ƿ�����,�����µ���������!');location.href='../login.php'</script>";
	}
}else if(isset($_GET['task'])&&"ShouChang"==$_GET['task']){
	$mcid = $_GET[mcid];
	$cntQuery = $db->query("select * from lm_sj_mc where id=$mcid");
	if($db->db_num_rows($cntQuery)>0){
		$mcInfo = $db->fetch_array($mcQuery);//��Ʒ��Ϣ
		//��һ�Ա����
		$mbinfoQuery = $db->query("select id,mb_name,phone,realname from lm_member where id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
		$mbInfo = $db->fetch_array($mbinfoQuery);

		//���һ�Ա����
		$sjInfoQuery = $db->query("select s.mb_id,s.id,s.sj_name from lm_sj_mc c ,lm_sj s,lm_member m where c.sj_id=s.id and s.mb_id=m.id and c. id='$mcid'");
		$sjInfo = $db->fetch_array($sjInfoQuery);

		$db->query("INSERT INTO `lm_mb_sc`(`mc_id`,`mc_name`,`sj_name`,`sj_id`,`mb_name`,`mb_phone`,`mb_id`,`create_date`," .
					"`mb_realname`,`sj_mb_id`) VALUES ('$mcid', '$mcInfo[mc_name].', " .
					"'$sjInfo[sj_name]', '$sjInfo[id]', '$mbInfo[mb_name]', '$mbInfo[phone]', '$mbInfo[id]', now()," .
					"'$mbInfo[realname]','$sjInfo[mb_id]')");
		echo "<script>location.href='../index.php?divNo=7&flag=mb'</script>";
	}else{
		session_destroy();
		echo "<script>alert('�Ƿ�����,�����µ���������!');location.href='../login.php'</script>";
	}
}

?>
