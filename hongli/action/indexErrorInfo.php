<?php
//错误提示
//会员资料修改
if($_GET['error']=="MB-1"){
	$smarty->assign("errorInfoByMbInfo","验证码错误!");
}else if($_GET['error']=="MB-2"){
	$smarty->assign("errorInfoByMbInfo","二级密码错误!");
}else{
	$smarty->assign("errorInfoByMbInfo","OK");
}


//我要红利
if($_GET['error']=="HL-1"){
	$smarty->assign("errorInfoByHongLi","验证码错误!");
}else if($_GET['error']=="HL-2"){
	$smarty->assign("errorInfoByHongLi","红利卡账号与红利卡密码不一致或该卡号未制卡!");
}else if($_GET['error']=="HL-3"){
	$smarty->assign("errorInfoByHongLi","红利卡面额不对,只能使用500或1000的面额!");
}else{
	$smarty->assign("errorInfoByHongLi","OK");
}

//我要积分errorInfoByJiFen
if($_GET['error']=="JF-1"){
	$smarty->assign("errorInfoByJiFen","验证码错误!");
}else if($_GET['error']=="JF-2"){
	$smarty->assign("errorInfoByJiFen","红利卡账号与红利卡密码不一致或该卡号未制卡!");
}else{
	$smarty->assign("errorInfoByJiFen","OK");
}
//我的积分errorInfoByJiFen2HongLi
if($_GET['error']=="JF2HL-1"){
	$smarty->assign("errorInfoByJiFen2HongLi","二级密码错误!");
}else if($_GET['error']=="JF2HL-2"){
	$smarty->assign("errorInfoByJiFen2HongLi","您的红利权数不够,无法兑换!");
}else{
	$smarty->assign("errorInfoByJiFen2HongLi","OK");
}

//提现
if($_GET['error']=="TX-1"){
	$smarty->assign("errorInfoByTiXian","验证码错误!");
}else if($_GET['error']=="TX-2"){
	$smarty->assign("errorInfoByTiXian","二级密码错误或输入的金额小于40!");
}else if($_GET['error']=="TX-3"){
	$smarty->assign("errorInfoByTiXian","您的金额不足,请核对!");
}else{
	$smarty->assign("errorInfoByTiXian","OK");
}

//转账
if($_GET['error']=="ZZ-1"){
	$smarty->assign("errorInfoByZhuanZhang","二级密码错误!");
}else if($_GET['error']=="TX-2"){
	$smarty->assign("errorInfoByZhuanZhang","您的积分不够,请核对!");
}else if($_GET['error']=="TX-3"){
	$smarty->assign("errorInfoByZhuanZhang","您的红利不够,请核对!");
}else if($_GET['error']=="TX-4"){
	$smarty->assign("errorInfoByZhuanZhang","对方用户名不存在,请核对!");
}else{
	$smarty->assign("errorInfoByZhuanZhang","OK");
}

//问题反馈
if($_GET['error']=="QA-1"){
	$smarty->assign("errorInfoByQA","验证码错误!");
}else{
	$smarty->assign("errorInfoByQA","OK");
}
//旧密码修改
if($_GET['error']=="MP-1"){
	$smarty->assign("errorInfoByPassword","验证码错误!");
}else if($_GET['error']=="MP-2"){
	$smarty->assign("errorInfoByPassword","新密码不一致!");
}else if($_GET['error']=="MP-3"){
	$smarty->assign("errorInfoByPassword","旧密码错误!");
}else if($_GET['error']=="MP-4"){
	$smarty->assign("errorInfoByPassword","二级密码错误!");
}else if($_GET['error']=="MP-5"){
	$smarty->assign("errorInfoByPassword","密保答案错误!");
}else{
	$smarty->assign("errorInfoByPassword","OK");
}

//商家资料修改
if($_GET['error']=="SJ-1"){
	$smarty->assign("errorInfoBySjInfo","验证码错误!");
}else if($_GET['error']=="SJ-2"){
	$smarty->assign("errorInfoBySjInfo","二级密码错误!");
}else{
	$smarty->assign("errorInfoBySjInfo","OK");
}



//商家完善平台
if($_GET['error']=="AP-1"){
	$smarty->assign("errorInfoByAddProduct","验证码错误!");
}else if($_GET['error']=="AP-2"){
	$smarty->assign("errorInfoByAddProduct","图片上传失败,请检查文件类型和大小!");
}else{
	$smarty->assign("errorInfoByAddProduct","OK");
}
?>
