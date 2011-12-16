<?php
if (!isset ($_SESSION)) {
	session_start();
}
//职位申请
if (isset ($_POST[task]) && 'formSendByJob' == $_POST[task]) {
	if (isset ($_POST[jobid]) && !empty ($_POST[jobid])) {
		include_once ("../action/mysql.class.php");
		if (isset ($_POST['ImgCode']) && $_POST["ImgCode"] == $_SESSION['validationcode']) {
			$query = $db->query("select * from job_apply where job_id='$_POST[jobid]' and name='$_POST[title]'");
			$cnt = $db->db_num_rows();
			if ($cnt < 1) {
				$sql = "insert into job_apply(name,sex,brithday,marriage,college,edu_history,profession,grad_date,tel,phone,address," .
				"email,merit,edu_exp,work_exp,job_id,create_date)" .
				"values('$_POST[title]','$_POST[sex]','$_POST[name]','$_POST[custom1]','$_POST[company]','$_POST[company_address]','$_POST[products_id]'," .
				"'$_POST[products_name]','$_POST[tel]','$_POST[fax]'," .
				"'$_POST[address]','$_POST[email]','$_POST[products_num]','$_POST[content]','$_POST[custom2]','$_POST[jobid]',now())";

				$db->query($sql);
				$cnt = $db->db_affected_rows();
				if ($cnt > 0) {
					echo "<script>alert('职位申请成功!');location.href='../jobinfo.php?jobid=$_POST[jobid]';</script>";
				} else {
					echo "<script>alert('系统升级中,请稍后再申请!');window.history.back();</script>";
				}
			}else{
				echo "<script>alert('该职位已经申请,请不要重复申请!');window.history.back();</script>";
			}
		} else {
			echo "<script>alert('验证码错误!');window.history.back();</script>";
		}
	} else {
		echo "<script>alert('非法提交!');window.history.back();</script>";
	}
}
?>
