function checksj_name(){//�̼�����
	var sj_name = document.procatshopform.sj_name.value; 
	
	if(sj_name==null&&sj_name==""||sj_name.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checktype(){//������ҵ
	var type = document.procatshopform.type.value;

	if(type==null&&type==""||type.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkagent(){//������
	var agent = document.procatshopform.agent.value;

	if(agent==null&&agent==""||agent.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checksj_desc(){//�̼�����
	var sj_desc = document.procatshopform.sj_desc.value;

	if(sj_desc==null&&sj_desc==""||sj_desc.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkpic(){//ͼƬ
	var pic = document.procatshopform.pic.value;

	if(pic==null&&pic==""||pic.length==0){
	
		return false;
	}

	else{
	
		return true;
	}

}

function checklink_man(){//��ϵ��
	var link_man = document.procatshopform.link_man.value;
	
	if(link_man==null&&link_man==""||link_man.length==0){
		
		return false;
	}
	else{
	
		return true;
	}
	

}

function checktel(){//�绰
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

function checkfax(){//����
	var fax = document.procatshopform.fax.value;

	if(fax==null&&fax==""||fax.length==0){
	
		return false;
	}
	else{
		
		return true;
	}
}

function checkphone(){//�ֻ�
	var phone = document.procatshopform.phone.value;

	if(phone==null&&phone==""||phone.length==0){

		return false;
	}
	else{
	
		return true;
	}
}

function checkemail(){//����
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

function checkszSheng(){//ʡ��
	var szSheng = document.procatshopform.szSheng.value;

	if(szSheng==null&&szSheng==""||szSheng.length==0){
	
		return false;
	}
	else{
	
		return true;
	}

}

function checkaddress(){//��ַ
	var address = document.procatshopform.address.value;

	if(address==null&&address==""||address.length==0){
	
		return false;
	}
	else{
	
		return true;
	}
}

function checkrandom(){//��֤��
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

