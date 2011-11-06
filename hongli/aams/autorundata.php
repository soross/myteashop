<?php
if(isset($_GET[task]) && "toAutoRunData"==$_GET[task]){
	include_once("action/checkAamsLogin.php");
	ignore_user_abort();//关掉浏览器，PHP脚本也可以继续执行.
	set_time_limit(0);// 通过set_time_limit(0)可以让程序无限制的执行下去
	//$interval=24*60*60;// 每隔24小时运行
	$interval=60;// 每隔1分钟运行
	do{
		$run = include 'action/jobconfig.php';
		if(!$run) die('job is die by flag');
		//这里是你要执行的代码

		include_once("action/mysql.class.php");
		$query = $db->query("select * from lm_mb_limit where id='0'");
		$info = $db->fetch_array($query);
		if($info[hongli]==0){
			//重新计算一天联盟的收益和红利
			$db->query("update lm_mb_limit set sale_money='0',exchange='0',hongli='0' where id='0'");
			die('当前没有需要处理的数据!');
		}
		if(((($info[sale_money]+$info[exchange])*0.05)/$info[hongli])<0.1){
			$db->query("insert into lm_mb_log(service_code,create_Date,mb_id,remark,num,result,cardno,domode,orderNo) " .
				"values('LmFenHong',now(),'','联盟当前红利".(($info[sale_money]+$info[exchange])*0.05)/$info[hongli]."'," .
						"'".(($info[sale_money]+$info[exchange])*0.05)/$info[hongli]."','Error','$info[sale_money]','$info[exchange]','$info[hongli]')");

			die('今天的数据太小了,积累到明天运算!');
		}else{
			//计算用户的分红
			$db->query("update lm_mb_limit set money=money+(hongli*".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."),hongli='0' where id > 0");
			//重新计算一天联盟的收益和红利
			$db->query("update lm_mb_limit set sale_money='0',exchange='0',hongli='0' where id='0'");

			$db->query("insert into lm_mb_log(service_code,create_Date,mb_id,remark,num,result,cardno,domode,orderNo) " .
				"values('LmFenHong',now(),'','联盟当前红利".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."'," .
						"'".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."','OK','$info[sale_money]','$info[exchange]','$info[hongli]')");
		}
		sleep($interval);// 等待时间单位秒
	}while(true);
}else{
	echo "<script>alert('非法操作!');location.href='admin.php'</script>";
}
?>
