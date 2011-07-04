<?php
if("Timmer" == $_GET[task]){
	ignore_user_abort(true);
	set_time_limit(0);
	function test(){
		echo "不要迷恋哥，哥只是个定时器！";
		echo date('h:i:s') . "<br>";
	}
	function just_do_it($flag){
		test();
		if($flag<10){
			usleep(2*1000*1000);
		}
	}
	ob_end_clean();
	ob_start();//开始缓冲数据
	while($flag<10){
		echo str_repeat(" ",1024);//ie有默认的1k buffer
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


