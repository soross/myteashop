function checksj_name(){//商家名称
	var sj_name = document.procatshopform.sj_name.value; 
	
	if(sj_name==null&&sj_name==""||sj_name.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checktype(){//所属行业
	var type = document.procatshopform.type.value;

	if(type==null&&type==""||type.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkagent(){//代理商
	var agent = document.procatshopform.agent.value;

	if(agent==null&&agent==""||agent.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checksj_desc(){//商家描述
	var sj_desc = document.procatshopform.sj_desc.value;

	if(sj_desc==null&&sj_desc==""||sj_desc.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkpic(){//图片
	var pic = document.procatshopform.pic.value;

	if(pic==null&&pic==""||pic.length==0){
	
		return false;
	}

	else{
	
		return true;
	}

}

function checklink_man(){//联系人
	var link_man = document.procatshopform.link_man.value;
	
	if(link_man==null&&link_man==""||link_man.length==0){
		
		return false;
	}
	else{
	
		return true;
	}
	

}

function checktel(){//电话
	var tel = document.procatshopform.tel.value;
	var reg=/(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;

	if(tel==null&&tel==""||tel.length==0){
	
		return false;
	}
	else if(reg.test(tel)==false){
	
		return false;
	}
	else{
	
		return true;
	}
}

function checkfax(){//传真
	var fax = document.procatshopform.fax.value;

	if(fax==null&&fax==""||fax.length==0){
	
		return false;
	}
	else{
		
		return true;
	}
}

function checkphone(){//手机
	var phone = document.procatshopform.phone.value;

	if(phone==null&&phone==""||phone.length==0){

		return false;
	}
	else{
	
		return true;
	}
}

function checkemail(){//邮箱
	var email = document.procatshopform.email.value;

	if(email==null&&email==""||email.length==0){
	
		return false;
	}
	else if(!/^[A-Za-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(email)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkqq(){//QQ
	var qq = document.procatshopform.qq.value;

	if(qq==null&&qq==""||qq.length==0){
	
		return false;
	}
	else{
	
		return true;
	}
}

function checkszSheng(){//省市
	var szSheng = document.procatshopform.szSheng.value;

	if(szSheng==null&&szSheng==""||szSheng.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkaddress(){//地址
	var address = document.procatshopform.address.value;

	if(address==null&&address==""||address.length==0){
	
		return false;
	}
	else{
	
		return true;
	}
}

function checkrandom(){//验证码
	var random = document.procatshopform.random.value;

	if(random==null&&random==""||random.length==0){
	
		return false;
	}
	else{
	
		return true;
	}
}


function onsubmit(){

	if(checksj_name()&&checktype()&&checkagent()&&checksj_desc()&&checkpic()&&checklink_man()&&checktel()&&checkfax()
		&&checkphone()&&checkemail()&&checkqq()&&checkszSheng()&&checkaddress()&&checkrandom()){
	
		return true;
	}
	else{
	
		return false;
	}

	
}

