<?php
if("Timmer" == $_GET[task]){
	ignore_user_abort(true);
	set_time_limit(0);
	function test(){
		echo "��Ҫ�����磬��ֻ�Ǹ���ʱ����";
		echo date('h:i:s') . "<br>";
	}
	function just_do_it($flag){
		test();
		if($flag<10){
			usleep(2*1000*1000);
		}
	}
	ob_end_clean();
	ob_start();//��ʼ��������
	while($flag<10){
		echo str_repeat(" ",1024);//ie��Ĭ�ϵ�1k buffer
		ob_flush();
	    flush();
		just_do_it($flag);
		$flag++;
	}
	echo "11";
}else{
	echo "00";
}
?>


