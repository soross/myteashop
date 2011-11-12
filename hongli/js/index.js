<!-- 我的资料开始 -->

var realname = document.getElementById("realname").value; //真是姓名
var idcard = document.getElementById("idcard").value; //身份证号码
var phone = document.getElementById("phone").value;//固话/手机
var szSheng = document.getElementById("szSheng").value;//所在省市
var address = document.getElementById("address").value;//详细地址
var bankName = document.getElementById("bankName").value;//开户行
var E-mail = document.getElementById("E-mail").value;//E-mail
var bankUser = document.getElementById("bankUser").value;//开户名
var bankCode = document.getElementById("bankCode").value;//帐号
var password = document.getElementById("password").value;//二次密码
var random = document.getElementById("random").value;//验证码



function checkrealname(){//真是姓名
	var realname = document.procatshopform.realname.value;
	if(realname==null&&realname==""||realname.length==0){
		
		return false;
	}
	else{
		
		return true;
	}

}

function checkidcard(){//身份证号码
	var idcard = document.procatshopform.idcard.value;
	if(idcard==null||idcard==""||idcard.length==0){
	
		return false;
	}
	else if(!/^[0-9]{18}$/.test(idcard)){
	
		return false;
	}
	else{
		
		return true;
	}

}

function checkphone(){//固话/手机
	var phone = document.procatshopform.phone.value;
	if(phone==null||phone==""||phone.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkszSheng(){//所在省市
	var szSheng = document.procatshopform.szSheng.value;
	if(phone==null||phone==""||phone.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkaddress(){//详细地址
	var address = document.procatshopform.address.value;
	if(address==null||address==""||address.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankName(){//开户行
	var bankName = document.procatshopform.bankName.value;
	if(bankName==null||bankName==""||bankName.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkE-mail(){//E-mail
	var E-mail = document.procatshopform.E-mail.value;
	if(E-mail==null||E-mail==""||E-mail.length==0){
		
		return false;
	}
	else if(!/^[A-Za-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(E-mail)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankUser(){//开户名
	var bankUser = document.procatshopform.bankUser.value;
	if(bankUser==null||bankUser==""||bankUser.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankCode(){//帐号
	var bankCode = document.procatshopform.bankCode.value;
	if(bankCode==null||bankCode==""||bankCode.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword(){//二次密码
	var password = document.procatshopform.password.value;
	if(password==null||password==""||password.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom(){//验证码
	var random = document.procatshopform.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onprocatshopform(){

	if(checkrealname()&&checkidcard()&&checkphone()&&checkszSheng()&&checkaddress()&&checkbankName()&&checkE-mail()
		&&checkbankUser()&&checkbankCode()&&checkpassword()&&checkrandom()){
	
	
		return true;
	}
	else{
	
	
		return false;
	}



}


<!-- 我的资料结束 -->


<!-- 我要分红开始 -->

var no = document.getElementById("no").value;//红利卡号
var password = document.getElementById("password").value;//红利卡密码
var random = document.getElementById("random").value;//验证码

function checkno(){//红利卡号
	var no = document.fhks.no.value;
	if(no==null||no==""||no.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordhlk(){//红利卡密码
	var password = document.fhks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom1(){//验证码
	var random = document.fhks.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onfhks(){

	if(checkno()&&checkpasswordhlk()&&checkrandom1()){
	
		return true;
	}
	else{
	
		return false;
	}


}




<!-- 我要分红结束 -->

<!-- 我的积分开始 -->

var no = document.getElementById("no").value;//红利卡号
var password = document.getElementById("password").value;//红利卡密码
var random = document.getElementById("random").value;//验证码

function checkno1(){//红利卡号
	var no = document.wyjfks.no.value;
	if(no==null||no==""||no.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordglk1(){//红利卡密码
	var password = document.wyjfks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom2(){//验证码
	var random = document.wyjfks.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwyjfks(){

	if(checkno1()&&checkpasswordglk1&&checkrandom2()){
	
		return true;
	}
	else{
	
		return false;
	}

}




<!-- 我要积分结束 -->

<!-- 我的积分开始 -->

var hongli = document.getElementById("hongli").value;//分红权数
var password = document.getElementById("password").value;//二次密码

function checkhongli(){//分红权数
	var hongli = document.wdjfks.hongli.value;//分红权数
	if(hongli==null||hongli==""||hongli.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkpasswordsecond(){//二次密码
	var password = document.wdjfks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwdjfks(){

	if(checkhongli()&&checkpasswordsecond()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- 我的积分结束 -->

<!-- 我要提现开始 -->
var num = document.wytx.num.value;//提现金额
var password = document.getElementById("password").value;//二次密码
var random = document.getElementById("random").value;//验证码

function checknum(){//提现金额
	var num = document.wytx.num.value;
	if(num==null||num==""||num.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordsecond1(){//二次密码
	var password = document.wytx.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkrandom3(){//验证码
	var random = document.wytx.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwytx(){

	if(checknum()&&checkpasswordsecond1()&&checkrandom3()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- 我要提现结束 -->


<!-- 我要转账开始 -->
var type = document.getElementById("type").value;//转账类型
var username = document.getElementById("username").value;//转入用户名
var num = document.getElementById("num").value;//转出数额
var password = document.getElementById("password").value;//二次密码

function checktype(){//转账类型
	var type = document.wyzz.type.value;
	if(type==null||type==""||type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkusername(){//转入用户名
	var username = document.wyzz.username.value;
	if(username==null||username==""||username.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknum1(){//转出数额
	var num = document.wyzz.num.value;//转出数额
	if(num==null||num==""||num.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkpasswordscond2(){//二次密码
	var password = document.wyzz.password.value;//二次密码
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onwyzz(){

	if(checktype()&&checkusername()&&checknum1()&&checkpasswordscond2()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- 我要转账结束 -->


<!-- 问题反馈开始 -->
var title = document.getElementById("title").value;//标题
var content = document.getElementById("content").value;//内容
var random = document.getElementById("random").value;//验证码

function checktitle(){//标题
	var title = document.wtfh.title.value;
	if(title==null||title==""||title.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkcontent(){//内容
	var content = document.wtfh.content.value;
	if(content==null||content==""||content.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom4(){//验证码
	var random = document.wtfh.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onwtfh(){

	if(checktitle()&&checkcontent()&&checkrandom4()){
	
		return true;
	}
	else{
	
		return false;
	}


}



<!-- 问题反馈结束 -->



<!-- 密码修改开始 -->
var oldpassword = document.getElementById("oldpassword").value;//旧密码
var password = document.getElementById("password").value;//新密码
var password2 = document.getElementById("password2").value;//确定密码
var random = document.getElementById("random").value;//验证码

function checkoldpassword(){//旧密码
	var oldpassword = document.mmxg.oldpassword.value;
	if(oldpassword==null||oldpassword==""||oldpassword.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword(){//新密码
	var password = document.mmxg.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//确定密码
	var password2 = document.mmxg.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom5(){//验证码
	var random = document.mmxg.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onmmxg(){

	if(checkoldpassword()&&checknewpassword()&&checkpassword2()&&checkrandom5){
	
		return true;
	}
	else{
	
		return false;
	}

}



----------------------------------------------------------------------
var secondpassword = document.getElementById("secondpassword").value;//二次密码
var password = document.getElementById("password").value;//新密码
var password2 = document.getElementById("password2").value;//确认密码
var random = document.getElementById("random").value;//验证码

function checksecondpassword(){//二次密码
	var secondpassword = document.mmxg1.secondpassword.value;
	if(secondpassword==null||secondpassword==""||secondpassword.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword1(){//新密码
	var password = document.mmxg1.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//确认密码
	var password2 = document.mmxg1.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom6(){//验证码
	var random = document.mmxg1.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}



function onmmxg1(){

	if(checksecondpassword()&&checknewpassword1()&&checkpassword2()&&checkrandom6()){
	
		return true;
	}
	else{
	
		return false;
	}

}



--------------------------------------------------------------------------
var answer = document.getElementById("answer").value;//答案
var password = document.getElementById("password").value;//新二次密码
var password2 = document.getElementById("password2").value;//确定二次密码
var random = document.getElementById("random").value;//验证码


function checksanswer(){//答案
	var answer = document.mmxg2.answer.value;
	if(answer==null||answer==""||answer.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword2(){//新密码
	var password = document.mmxg2.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//确认密码
	var password2 = document.mmxg2.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom7(){//验证码
	var random = document.mmxg2.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onmmxg2(){

	if(checksanswer()&&checknewpassword2()&&checkpassword2()&&checkrandom7()){
	
		return true;
	}
	else{
	
		return false;
	}


}


--------------------------------------------------------------------------

<!-- 密码修改结束 -->


<!-- 基本资料平台 -->


var sj_name = document.getElementById("sj_name").value;//注册商家名称
var sj_type = document.getElementById("sj_type").value;//商家类型
var phone = document.getElementById("phone").value;//固话/手机
var szSheng = document.getElementById("szSheng").value;//所在省市
var address = document.getElementById("address").value;//详细地址
var link_man = document.getElementById("link_man").value;//法定人名称
var email = document.getElementById("email").value;//E-mail
var password = document.getElementById("password").value;//二次密码
var random = document.getElementById("random").value;//验证码


function checksj_name(){//注册商家名称
	var sj_name = document.sjform.sj_name.value;//注册商家名称
	if(sj_name==null||sj_name==""||sj_name.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checksj_type(){//验证码
	var sj_type = document.sjform.sj_type.value;//商家类型
	if(sj_type==null||sj_type==""||sj_type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkphone1(){//固话/手机
	var phone = document.sjform.phone.value;
	if(phone==null||phone==""||phone.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkszSheng1(){//所在省市
	var szSheng = document.sjform.szSheng.value;
	if(szSheng==null||szSheng==""||szSheng.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkaddress1(){//详细地址
	var address = document.sjform.address.value;
	if(address==null||address==""||address.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checklink_man(){//法定人名称
	var link_man = document.sjform.link_man.value;
	if(link_man==null||link_man==""||link_man.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkemail(){//E-mail
	var email = document.sjform.email.value;
	if(email==null||email==""||email.length==0)){
		
		return false;
	}
	else if(!/^[A-Za-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(email)){
	}
	else{
		
		return true;
	}
}

function checkpasswordsecond3(){//二次密码
	var password = document.sjform.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom8(){//验证码
	var random = document.sjform.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onsjform(){

	if(checksj_name()&&checksj_type()&&checkphone1()&&checkszSheng1()&&checkaddress1()&&checklink_man()&&checkemail()
		&&checkpasswordsecond3()&&checkrandom8()){
	
		return true;
	}
	else{
	
		return false;
	}

}



<!-- 基本资料 结束 -->



<!-- 完善平台 -->

var mc_name = document.getElementById("mc_name").value;//商品名称
var type = document.getElementById("type").value;//商品类型
var mc_desc = document.getElementById("mc_desc").value;//内容
var pic_file = document.getElementById("pic_file").value;//图片
var price = document.getElementById("price").value;//红利
var price_type = document.getElementById("price_type").value;//积分
var count = document.getElementById("count").value;//数量
var random = document.getElementById("random").value;//验证码

function checkmc_name(){//商品名称
	var mc_name = document.wspt.mc_name.value;
	if(mc_name==null||mc_name==""||mc_name.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checktype(){//商品类型
	var type = document.wspt.type.value;
	if(type==null||type==""||type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkmc_desc(){//内容
	var mc_desc = document.wspt.mc_desc.value;
	if(mc_desc==null||mc_desc==""||mc_desc.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpic_file(){//图片
	var pic_file = document.wspt.pic_file.value;
	if(pic_file==null||pic_file==""||pic_file.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkprice(){//红利
	var price = document.wspt.price.value;
	if(price==null||price==""||price.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkprice_type(){//积分
	var price_type = document.wspt.price_type.value;
	if(price_type==null||price_type==""||price_type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkcount(){//数量
	var count = document.wspt.count.value;
	if(count==null||count==""||count.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom9(){//验证码
	var random = document.wspt.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwspt(){

	if(checkmc_name()&&checktype()&&checkmc_desc()&&checkpic_file()&&checkprice()&&checkprice_type()&&checkcount()&&checkrandom9()){
	
		return true;
	}
	else{
	
		return false;
	}
}

<!-- 完善平台 结束 -->
