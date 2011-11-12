function checkusername(){//用户名
	var username = document.formUser.username.value; 
	
	if(username==null&&username==""||username.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkpassword(){//密码
	var password = document.formUser.password.value; 
	
	if(password==null&&password==""||password.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkconfirm_password(){//确认密码
	var confirm_password = document.formUser.confirm_password.value; 
	
	if(confirm_password==null&&confirm_password==""||confirm_password.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkpassword_2(){//二级密码
	var password_2 = document.formUser.password_2.value; 
	
	if(password_2==null&&password_2==""||password_2.length==0){

		return false;
	}
	else{
	
		return true;
	}
}

function checkemail(){//email
	var email = document.formUser.email.value; 
	
	if(email==null&&email==""||email.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkQuesionSel(){//我的问题
	var QuesionSel = document.formUser.QuesionSel.value; 
	
	if(QuesionSel==null&&QuesionSel==""||QuesionSel.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkpasswd_answer(){//问题答案
	var passwd_answer = document.formUser.passwd_answer.value; 
	
	if(passwd_answer==null&&passwd_answer==""||passwd_answer.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkmb_type(){//会员性质
	var mb_type = document.formUser.mb_type.value; 
	
	if(mb_type==null&&mb_type==""||mb_type.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkshopxp_shiname(){//您的真实姓名
	var shopxp_shiname = document.formUser.shopxp_shiname.value; 
	
	if(shopxp_shiname==null&&shopxp_shiname==""||shopxp_shiname.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkMoMNo(){//您的身份证号
	var MoMNo = document.formUser.MoMNo.value; 
	
	if(MoMNo==null&&MoMNo==""||MoMNo.length==0){

		return false;
	}
	else if (!/^[0-9]{18}$/.test(MoMNo)){
	}
	else{
	
		return true;
	}


}

function checkqyname(){//企业名称
	var qyname = document.formUser.qyname.value; 
	
	if(qyname==null&&qyname==""||qyname.length==0){

		rreturn false;
	}
	else{
	
		return true;
	}


}

function checkqymc(){//企业编号
	var qymc = document.formUser.qymc.value; 
	
	if(qymc==null&&qymc==""||qymc.length==0){

		return false;
	}
	else{
	
		return false;
	}


}

function checklianxiren(){//联 系 人
	var lianxiren = document.formUser.lianxiren.value; 
	
	if(lianxiren==null&&lianxiren==""||lianxiren.length==0){

		return false;
	}
	else{
	
		return false;
	}


}

function checkphone(){//联系电话
	var phone = document.formUser.phone.value; 
	var reg=/(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;
	
	if(phone==null&&phone==""||phone.length==0){

		return false;
	}
	else if(reg.test(phone)){
	
		return false;
	}
	else{
	
		return true;
	}


}

function checktjr(){//推荐人用户名
	var tjr = document.formUser.tjr.value; 
	
	if(tjr==null&&tjr==""||tjr.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkszSheng(){//所在省市
	var szSheng = document.formUser.szSheng.value; 
	
	if(szSheng==null&&szSheng==""||szSheng.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkaddress(){//详细地址
	var address = document.formUser.address.value; 
	
	if(address==null&&address==""||address.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkusertel(){//联系电话
	var usertel = document.formUser.usertel.value; 
	
	if(usertel==null&&usertel==""||usertel.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_name(){//开户行
	var band_name = document.formUser.band_name.value; 
	
	if(band_name==null&&band_name==""||band_name.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_user(){//户名
	var band_user = document.formUser.band_user.value; 
	
	if(band_user==null&&band_user==""||band_user.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_id(){//账号
	var band_id = document.formUser.band_id.value; 
	
	if(band_id==null&&band_id==""||band_id.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkagreement(){//
	var agreement = document.formUser.agreement.value; 
	
	if(agreement==null&&agreement==""||agreement.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function onformUser(){


	if(checkusername()&&checkpassword()&&checkconfirm_password()&&checkpassword_2()&&checkemail()&&checkQuesionSel()&&
		checkpasswd_answer()&&checkmb_type()&&checkshopxp_shiname()&&checkMoMNo()&&checkqyname()&&checkqymc()&&checklianxiren()&&checkphone()
		&&checktjr()&&checkszSheng()&&checkaddress()&&checkusertel()&&checkband_name()&&checkband_user()&&checkband_id()&&checkagreement()){
	
		return true;
	}
	else{

		return false;
	
	}


}