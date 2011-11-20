<?php
require_once ("../action/mysql.class.php");
session_start();
if($_POST[agreement]==1){
	if(!empty($_POST[username])){
		if(isset($_POST[password]) && isset($_POST[confirm_password]) && $_POST[password]== $_POST[confirm_password]){
			if(isset($_POST[password_2]) && isset($_POST[confirm_password_2]) && $_POST[password_2]== $_POST[confirm_password_2]){
				$tjr = true;
				$state="-1";
				$tjr_id = "-1";
				if($_POST[mb_type]==1){
					$queryTjr = $db->query("select * from lm_member where mb_name='$_POST[tjr]'");
					$cnt =$db->db_num_rows();
					if($cnt>0){
						$rowTjr = $db->fetch_array("$queryTjr");
						$tjr_id = $rowTjr[id];
					}
				}else if($_POST[mb_type]==2){
					$queryTjr = $db->query("select * from lm_member where mb_name='$_POST[tjr]'");
					$cnt =$db->db_num_rows();
					if($cnt>0){
						$rowTjr = $db->fetch_array("$queryTjr");
						$tjr_id = $rowTjr[id];
					}
				}else if($_POST[mb_type]==3){
					$queryTjr = $db->query("select * from lm_member where mb_name='$_POST[tjr]'");
					$cnt =$db->db_num_rows();
					if($cnt>0){
						$rowTjr = $db->fetch_array("$queryTjr");
						$tjr_id = $rowTjr[id];
					}
				}

				if($tjr){
					//判断是否存在用户名
					$db->query("select id from lm_member where mb_name='".$_POST[username]."'");
					$cnt = $db->db_num_rows();
					if($cnt<1){
						$state = 0;
						if($_POST[mb_type]==1){
							$state=-1;
						}
						try{
							$db->query("insert into lm_member(`mb_name`,`password`,`second_password`,mb_type,email,question, answer,realname,idcard," .
									"recommendID, province, city, address, phone, bankName, `bankUser`, `bankCode`, create_Date,state) values(" .
									"'$_POST[username]','".md5($_POST[password])."','".md5($_POST[password_2])."','$_POST[mb_type]'," .
									"'$_POST[email]','$_POST[sel_question]','$_POST[passwd_answer]'," .
									"'$_POST[realname]','$_POST[idCard]','$tjr_id','$_POST[szSheng]','$_POST[szShi]'," .
									"'$_POST[address]','$_POST[usertel]','$_POST[band_name]','$_POST[band_user]','$_POST[band_id]',now(),$state)");
							$id = $db->insert_id();
							$db->query("insert into lm_mb_limit(mb_id,hongli,jifen,money,sale_money,exchange,not_money) values('$id','0','0','0','0','0','0')");

							//登入模块
							$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = $id;
							$_SESSION['WEB_USER_LOGIN_UID_TYPE'] = $_POST[mb_type];
							$_SESSION['WEB_USER_LOGIN_SESSION'] = md5($_POST[username] .md5($_POST[password]) . "TKBK");
							$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();

							echo "<script>alert('注册成功,将进入会员中心!');location.href='../index.php'</script>";
						}catch (Exception $e){
							//用户已存在
							echo "<script>location.href='../reg.php?error=-3'</script>";
							exit;
						}
					}else{
						//用户已存在
						echo "<script>location.href='../reg.php?error=3'</script>";
					}
				}else{
					//推荐人不正确
					echo "<script>alert();location.href='../reg.php?error=2'</script>";
				}
			}else{
				//二次密码不一致
				echo "<script>location.href='../reg.php?error=1'</script>";
			}
		}else{
			//密码不一致
			echo "<script>location.href='../reg.php?error=0'</script>";
		}
	}else{
		echo "<script>location.href='../reg.php?error=-2'</script>";
	}
}else{
	//请勾选用户协议
	echo "<script>location.href='../reg.php?error=-1'</script>";
}

?>
