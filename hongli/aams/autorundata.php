<?php
if(isset($_GET[task]) && "toAutoRunData"==$_GET[task]){
	include_once("action/checkAamsLogin.php");
	ignore_user_abort();//�ص��������PHP�ű�Ҳ���Լ���ִ��.
	set_time_limit(0);// ͨ��set_time_limit(0)�����ó��������Ƶ�ִ����ȥ
	//$interval=24*60*60;// ÿ��24Сʱ����
	$interval=60;// ÿ��1��������
	do{
		$run = include 'action/jobconfig.php';
		if(!$run) die('job is die by flag');
		//��������Ҫִ�еĴ���

		include_once("action/mysql.class.php");
		$query = $db->query("select * from lm_mb_limit where id='0'");
		$info = $db->fetch_array($query);
		if($info[hongli]==0){
			//���¼���һ�����˵�����ͺ���
			$db->query("update lm_mb_limit set sale_money='0',exchange='0',hongli='0' where id='0'");
			die('��ǰû����Ҫ���������!');
		}
		if(((($info[sale_money]+$info[exchange])*0.05)/$info[hongli])<0.1){
			$db->query("insert into lm_mb_log(service_code,create_Date,mb_id,remark,num,result,cardno,domode,orderNo) " .
				"values('LmFenHong',now(),'','���˵�ǰ����".(($info[sale_money]+$info[exchange])*0.05)/$info[hongli]."'," .
						"'".(($info[sale_money]+$info[exchange])*0.05)/$info[hongli]."','Error','$info[sale_money]','$info[exchange]','$info[hongli]')");

			die('���������̫С��,���۵���������!');
		}else{
			//�����û��ķֺ�
			$db->query("update lm_mb_limit set money=money+(hongli*".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."),hongli='0' where id > 0");
			//���¼���һ�����˵�����ͺ���
			$db->query("update lm_mb_limit set sale_money='0',exchange='0',hongli='0' where id='0'");

			$db->query("insert into lm_mb_log(service_code,create_Date,mb_id,remark,num,result,cardno,domode,orderNo) " .
				"values('LmFenHong',now(),'','���˵�ǰ����".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."'," .
						"'".round((($info[sale_money]+$info[exchange])*0.05)/$info[hongli],2)."','OK','$info[sale_money]','$info[exchange]','$info[hongli]')");
		}
		sleep($interval);// �ȴ�ʱ�䵥λ��
	}while(true);
}else{
	echo "<script>alert('�Ƿ�����!');location.href='admin.php'</script>";
}
?>
